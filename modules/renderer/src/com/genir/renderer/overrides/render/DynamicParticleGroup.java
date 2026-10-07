package com.genir.renderer.overrides.render;

import org.lwjgl.opengl.GL11;

import java.util.Iterator;
import java.util.LinkedList;

/**
 * OVERRIDES com.fs.graphics.particle.DynamicParticleGroup
 */
public class DynamicParticleGroup {
    /**
     * STUBS
     */
    private LinkedList<BaseParticle> particles;
    private int limit;

    /**
     * REPLACED METHOD
     */
    public void render(float posX, float posY) {
        if (!this.particles.isEmpty()) {
            BaseParticle var3 = (BaseParticle) this.particles.get(0);
            com.genir.renderer.bridge.commands.GL11.glPushMatrix();
            com.genir.renderer.bridge.commands.GL11.glTranslatef(posX, posY, 0.0F);
            var3.preBatch();
            Iterator var5 = this.particles.iterator();

            while (var5.hasNext()) {
                BaseParticle var4 = (BaseParticle) var5.next();
                var4.render();
            }

            var3.postBatch();
            com.genir.renderer.bridge.commands.GL11.glTranslatef(-posX, -posY, 0.0F);
            com.genir.renderer.bridge.commands.GL11.glPopMatrix();
        }
    }


//    /**
//     * REPLACED METHOD
//     */
//    public void add(BaseParticle particle) {
//        if (firstParticleClass == null) {
//            firstParticleClass = particle.getClass();
//        } else if (firstParticleClass != particle.getClass()) {
//            int x = 0;
//        }
//
//        if (this.particles.size() >= this.limit) {
//            this.particles.removeFirst();
//        }
//
//        this.particles.add(particle);
//    }
}
