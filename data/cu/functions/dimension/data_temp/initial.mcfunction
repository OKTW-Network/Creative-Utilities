forceload add 0 0
fill 0 0 0 16 0 16 minecraft:bedrock replace

setblock 0 1 0 minecraft:shulker_box keep
execute unless entity @e[tag=cu.itemStorageTemp.block] run summon minecraft:marker 0 1 0 {Tags:["cu.itemStorageTemp.block"]}

execute unless entity @e[tag=cu.itemStorageTemp.entity] run summon minecraft:donkey 1 1 0 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,ChestedHorse:1b,Tags:["cu.itemStorageTemp.entity"]}

setblock 0 1 1 minecraft:oak_sign keep
execute unless entity @e[tag=cu.stringConverter] run summon minecraft:marker 0 1 1 {Tags:["cu.stringConverter"]}

execute unless entity @e[tag=cu.dataStorage.base] run summon minecraft:marker 0 1 2 {Tags:["cu.dataStorage.base"]}
