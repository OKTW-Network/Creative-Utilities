## 1.16

scoreboard players set @s expMin 0
scoreboard players set @s expMax 0

scoreboard players set #calculation_temp1 numeric 0
scoreboard players set #calculation_temp2 numeric 0
scoreboard players set #calculation_temp3 numeric 0
scoreboard players set #calculation_temp4 numeric 0
scoreboard players set #calculation_temp5 numeric 0
scoreboard players set #calculation_temp6 numeric 0

# Fox
execute if entity @s[type=minecraft:fox] run scoreboard players set @s expMin 1
execute if entity @s[type=minecraft:fox] run scoreboard players set @s expMax 2

# Bee/Cat/Ocelot/Chicken/Cod/Salmon/Pufferfish/Tropical Fish/Cow/Horse/Llama/Trader Llama/Mooshroom/Panda/Parrot/Pig/Polar Bear/Rabbit/Sheep/Squid/Turtle/Wolf/baby Wolf
scoreboard players set #calculation_temp1 numeric 1
scoreboard players set #calculation_temp2 numeric 3
execute if entity @s[type=minecraft:bee,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:cat,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:ocelot,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:chicken,nbt={Age:0},nbt=!{IsChickenJockey:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt={Age:0},nbt=!{IsChickenJockey:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:cod,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:cod,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:salmon,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:salmon,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:pufferfish,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:pufferfish,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:tropical_fish,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:tropical_fish,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:cow,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:horse,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:llama,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:mooshroom,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:panda,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:parrot,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:parrot,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:pig,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:polar_bear,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:rabbit,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:sheep,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:squid,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:squid,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:turtle,nbt={Age:0}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt={Age:0}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:wolf] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf] run scoreboard players operation @s expMax = #calculation_temp2 numeric

# Jockey Chicken
execute if entity @s[type=minecraft:chicken,nbt={IsChickenJockey:1b}] run scoreboard players set @s expMin 1
execute if entity @s[type=minecraft:chicken,nbt={IsChickenJockey:1b}] run scoreboard players set @s expMax 2

# Creeper/Enderman/Ghast/Phantom/Shulker/Silverfish/Spider/Cave Spider/Skeleton/Stray/Wither Skeleton/Vindicator/Pillager/Vex/Witch/Illusioner/Zombie Villager/Zombie/Drowned/Husk/Zombie Pigman
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 5
function cu:calculation-armor_count
execute if score #calculation_temp5 numeric matches 1.. run function cu:calculation-exp_armor
scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
scoreboard players operation #calculation_temp2 numeric += #calculation_temp3 numeric
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:drowned,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:husk,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombified_piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombified_piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric

# Baby Zombie Villager, Baby Zombie, Baby Drowned, Baby Husk, Baby Zombie Pigman
scoreboard players set #calculation_temp1 numeric 12
scoreboard players set #calculation_temp2 numeric 12
function cu:calculation-armor_count
execute if score #calculation_temp5 numeric matches 1.. run function cu:calculation-exp_armor
scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
scoreboard players operation #calculation_temp2 numeric += #calculation_temp3 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombified_piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombified_piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric

# Blaze, Evoker, Guardian, Elder Guardian
scoreboard players set #calculation_temp1 numeric 10
scoreboard players set #calculation_temp2 numeric 10
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s expMax = #calculation_temp2 numeric

# Endermite
execute if entity @s[type=minecraft:endermite] run scoreboard players set @s expMin 3
execute if entity @s[type=minecraft:endermite] run scoreboard players set @s expMax 3

# Slime/Magma Cube/Baby piglin
scoreboard players set #calculation_temp1 numeric 1
scoreboard players set #calculation_temp2 numeric 1
execute store result score #calculation_temp3 numeric run data get entity @s Size
scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
scoreboard players operation #calculation_temp2 numeric += #calculation_temp3 numeric
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s expMax = #calculation_temp2 numeric
execute if entity @s[type=minecraft:piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #calculation_temp1 numeric
execute if entity @s[type=minecraft:piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #calculation_temp2 numeric

# Ravager
execute if entity @s[type=minecraft:ravager] run scoreboard players set @s expMin 20
execute if entity @s[type=minecraft:ravager] run scoreboard players set @s expMax 20

# Wither
execute if entity @s[type=minecraft:wither] run scoreboard players set @s expMin 50
execute if entity @s[type=minecraft:wither] run scoreboard players set @s expMax 50

# Ender Dragon
## nope
