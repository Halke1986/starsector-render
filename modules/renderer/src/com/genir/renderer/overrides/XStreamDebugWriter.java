package com.genir.renderer.overrides;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.HierarchicalStreamDriver;
import com.thoughtworks.xstream.io.HierarchicalStreamReader;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;
import com.thoughtworks.xstream.io.WriterWrapper;
import org.apache.log4j.Logger;

import java.io.*;
import java.lang.reflect.Field;
import java.net.URL;

public class XStreamDebugWriter extends WriterWrapper {
    private final Logger logger = Logger.getLogger(XStreamDebugWriter.class);

    public XStreamDebugWriter(HierarchicalStreamWriter wrapped) {
        super(wrapped);
    }

    @Override
    public void startNode(String name) {
        logger.info("startNode: " + name);
        super.startNode(name);
    }

    @Override
    public void startNode(String name, Class clazz) {
        logger.info("startNode: " + name + "; " + clazz.getName());
        super.startNode(name, clazz);
    }

    @Override
    public void endNode() {
        logger.info("endNode");
        super.endNode();
    }

    @Override
    public void addAttribute(String key, String value) {
        logger.info("addAttribute: " + key + "; " + value);
        super.addAttribute(key, value);
    }

    @Override
    public void setValue(String text) {
        logger.info("setValue: " + text);
        super.setValue(text);
    }

    @Override
    public void flush() {
        logger.info("flush");
        super.flush();
    }

    @Override
    public void close() {
        logger.info("close");
        super.close();
    }

    public static void wrap(XStream xstream) {
        try {
            Field f = XStream.class.getDeclaredField("hierarchicalStreamDriver");
            f.setAccessible(true);
            HierarchicalStreamDriver originalDriver = (HierarchicalStreamDriver) f.get(xstream);

            // Already overriden.
            if (originalDriver instanceof DebugHierarchicalStreamDriver) {
                return;
            }

            HierarchicalStreamDriver debugDriver = new DebugHierarchicalStreamDriver(originalDriver);

            f.set(xstream, debugDriver);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private record DebugHierarchicalStreamDriver(HierarchicalStreamDriver originalDriver) implements HierarchicalStreamDriver {
        @Override
        public HierarchicalStreamReader createReader(Reader reader) {
            return originalDriver.createReader(reader);
        }

        @Override
        public HierarchicalStreamReader createReader(InputStream inputStream) {
            return originalDriver.createReader(inputStream);
        }

        @Override
        public HierarchicalStreamReader createReader(URL url) {
            return originalDriver.createReader(url);
        }

        @Override
        public HierarchicalStreamReader createReader(File file) {
            return originalDriver.createReader(file);
        }

        @Override
        public HierarchicalStreamWriter createWriter(Writer writer) {
            return new XStreamDebugWriter(originalDriver.createWriter(writer));
        }

        @Override
        public HierarchicalStreamWriter createWriter(OutputStream outputStream) {
            return new XStreamDebugWriter(originalDriver.createWriter(outputStream));
        }
    }
}
