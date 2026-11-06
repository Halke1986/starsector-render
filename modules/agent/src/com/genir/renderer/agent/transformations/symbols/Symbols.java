package com.genir.renderer.agent.transformations.symbols;

import com.genir.renderer.agent.ClassName;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.ClassNode;
import org.objectweb.asm.tree.FieldNode;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Symbols {
    public final String textureHandler;

    public Symbols() {
        ClassNode spriteNode = readClassNode("com/fs/graphics/Sprite");

        textureHandler = typeClass(byNameFirst(spriteNode.fields, "texture"));

        int x = 0;
    }

    private ClassNode readClassNode(String className) {
        try {
            ClassLoader loader = ClassLoader.getSystemClassLoader();
            InputStream stream = loader.getResourceAsStream(ClassName.resource(className));
            ClassReader reader = new ClassReader(stream.readAllBytes());
            ClassNode classNode = new ClassNode();
            reader.accept(classNode, 0);

            return classNode;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private FieldNode byNameFirst(List<FieldNode> fields, String name) {
        for (FieldNode f : fields) {
            if (f.name.equals(name)) {
                return f;
            }
        }

        return null;
    }

    private String typeClass(FieldNode field) {
        Type t = Type.getType(field.desc);
        return ClassName.internal(t.getClassName());
    }
}
