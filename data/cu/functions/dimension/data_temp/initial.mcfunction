forceload add 0 0
fill 0 0 0 16 0 16 minecraft:bedrock replace

setblock 0 0 0 minecraft:barrel{Items:[{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{CustomData:{cu:{id:"data_temp"}}}}]} replace
kill @e[tag=cu.data_temp]
summon minecraft:marker 0 0 0 {Tags:["cu.data_temp"]}

setblock 0 1 0 minecraft:shulker_box keep
kill @e[tag=cu.itemStorageTemp.1]
summon minecraft:marker 0 1 0 {Tags:["cu.itemStorageTemp.1"]}

setblock 0 1 1 minecraft:oak_sign keep
kill @e[tag=cu.stringConverter]
summon minecraft:marker 0 1 1 {Tags:["cu.stringConverter"]}

kill @e[tag=cu.dataStorage.base]
summon minecraft:marker 0 1 2 {Tags:["cu.dataStorage.base"]}

# Blank area
fill 0 80 0 16 80 16 minecraft:bedrock replace
