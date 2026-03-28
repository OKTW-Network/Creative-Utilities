execute if block ~ ~1 ~ minecraft:oak_button[face=floor] run data modify storage cu:io block.tests_attachable_face.Result.top set value true
execute if block ~ ~-1 ~ minecraft:oak_button[face=ceiling] run data modify storage cu:io block.tests_attachable_face.Result.bottom set value true
execute if block ~ ~ ~1 minecraft:oak_button[face=wall,facing=south] run data modify storage cu:io block.tests_attachable_face.Result.south set value true
execute if block ~ ~ ~-1 minecraft:oak_button[face=wall,facing=north] run data modify storage cu:io block.tests_attachable_face.Result.north set value true
execute if block ~1 ~ ~ minecraft:oak_button[face=wall,facing=east] run data modify storage cu:io block.tests_attachable_face.Result.east set value true
execute if block ~-1 ~ ~ minecraft:oak_button[face=wall,facing=west] run data modify storage cu:io block.tests_attachable_face.Result.west set value true
