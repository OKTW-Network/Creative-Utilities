forceload add 0 0

fill 0 0 0 15 0 15 minecraft:bedrock replace

setblock 0 1 0 minecraft:shulker_box keep
kill @e[tag=cu-Marker.simulation.container_block]
summon minecraft:marker 0 1 0 {Tags:["cu-Marker.simulation.container_block"]}

setblock 0 1 1 minecraft:oak_sign keep
kill @e[tag=cu-Marker.simulation.sign_block]
summon minecraft:marker 0 1 1 {Tags:["cu-Marker.simulation.sign_block"]}

function cu:data_storage/create_base

fill 0 8 0 15 8 15 minecraft:bedrock replace
