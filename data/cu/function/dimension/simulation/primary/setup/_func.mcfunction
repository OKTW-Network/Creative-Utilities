forceload add 0 0
execute unless function cu:dimension/simulation/primary/check_loaded run return fail

# y: 0 ~ 7
fill 0 0 0 15 0 15 minecraft:bedrock replace

setblock 0 1 0 minecraft:shulker_box keep
kill @e[tag=cu-Marker.simulation.container_block]
summon minecraft:marker 0 1 0 {Tags:["cu-Marker.simulation.container_block"]}

setblock 0 1 1 minecraft:oak_sign keep
kill @e[tag=cu-Marker.simulation.sign_block]
summon minecraft:marker 0 1 1 {Tags:["cu-Marker.simulation.sign_block"]}

function cu:dimension/simulation/primary/block_testing/reset_testing_area
# central: 2 3 13

# y: 8 ~ 15
fill 0 8 0 15 8 15 minecraft:bedrock replace

return 1