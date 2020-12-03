forceload add 0 0
fill 0 0 0 16 0 16 minecraft:bedrock replace
setblock 0 1 0 minecraft:shulker_box keep
execute unless entity @e[tag=CUDataTempItem] run summon donkey 1 1 0 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,ChestedHorse:1b,Tags:["CUDataTempItem"]}
setblock 0 1 1 minecraft:oak_sign keep
