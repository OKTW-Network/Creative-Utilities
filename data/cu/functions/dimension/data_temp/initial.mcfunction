forceload add 0 0
fill 0 0 0 15 0 15 minecraft:bedrock replace

setblock 0 0 0 minecraft:barrel{Items:[{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{CustomData:{cu:{id:"data_temp"}}}}]} replace
kill @e[tag=cu.dimension.data_temp]
summon minecraft:marker 0 0 0 {Tags:["cu.dimension.data_temp"]}

setblock 0 1 0 minecraft:shulker_box keep
kill @e[tag=cu.itemStorageTemp.1]
summon minecraft:marker 0 1 0 {Tags:["cu.itemStorageTemp.1"]}

setblock 0 1 1 minecraft:oak_sign keep
kill @e[tag=cu.stringConverter]
summon minecraft:marker 0 1 1 {Tags:["cu.stringConverter"]}

function cu:data_storage/create_base

fill 0 8 0 15 8 15 minecraft:bedrock replace
