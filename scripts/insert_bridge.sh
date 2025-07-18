#!/bin/bash

rm -rf ./assembly/bridged
cp -R ./disassembly/starfarer assembly/bridged

find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/opengl/GL11 ^com/genir/renderer/bridge/GL11 ^g' {} +
find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/opengl/GL14 ^com/genir/renderer/bridge/GL14 ^g' {} +
find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/opengl/Display ^com/genir/renderer/bridge/Display ^g' {} +
find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/opengl/GLContext ^com/genir/renderer/bridge/GLContext ^g' {} +
find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/opengl/Pbuffer ^com/genir/renderer/bridge/Pbuffer ^g' {} +
find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/opengl/ARBVertexBufferObject ^com/genir/renderer/bridge/ARBVertexBufferObject ^g' {} +
find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/opengl/EXTFramebufferObject ^com/genir/renderer/bridge/EXTFramebufferObject ^g' {} +
find ./assembly/bridged -type f -exec sed -i 's^org/lwjgl/util/Display ^com/genir/renderer/bridge/DisplayUtil ^g' {} +
