## 1.17

scoreboard players set @s expMin 0
scoreboard players set @s expMax 0

function math:calcu_temp/clear

# Fox
execute if entity @s[type=minecraft:fox] run scoreboard players set @s expMin 1
execute if entity @s[type=minecraft:fox] run scoreboard players set @s expMax 2

# Axolotl/Bee/Cat/Ocelot/Chicken/Cod/Salmon/Pufferfish/Tropical Fish/Cow/Horse/Llama/Trader Llama/Mooshroom/Panda/Parrot/Pig/Polar Bear/Rabbit/Sheep/Goat/Squid/Glow Squid/Turtle/Wolf/baby Wolf
scoreboard players set #1 calcu_temp 1
scoreboard players set #2 calcu_temp 3
execute if entity @s[type=minecraft:axolotl,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:axolotl,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:bee,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:bee,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:cat,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:cat,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:ocelot,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:ocelot,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:chicken,predicate=!minecraft:is_baby,nbt=!{IsChickenJockey:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:chicken,predicate=!minecraft:is_baby,nbt=!{IsChickenJockey:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:cod] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:cod] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:salmon] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:salmon] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:pufferfish] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:pufferfish] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:cow,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:cow,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:horse,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:horse,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:llama,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:llama,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:mooshroom,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:mooshroom,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:panda,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:panda,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:parrot,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:parrot,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:pig,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:pig,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:polar_bear,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:polar_bear,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:rabbit,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:rabbit,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:sheep,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:sheep,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:goat,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:goat,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:squid] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:squid] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:glow_squid] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:glow_squid] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:turtle,predicate=!minecraft:is_baby] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:turtle,predicate=!minecraft:is_baby] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:wolf] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:wolf] run scoreboard players operation @s expMax = #2 calcu_temp

# Jockey Chicken
execute if entity @s[type=minecraft:chicken,nbt={IsChickenJockey:1b}] run scoreboard players set @s expMin 1
execute if entity @s[type=minecraft:chicken,nbt={IsChickenJockey:1b}] run scoreboard players set @s expMax 2

# Creeper/Enderman/Ghast/Phantom/Shulker/Silverfish/Spider/Cave Spider/Skeleton/Stray/Wither Skeleton/Vindicator/Pillager/Vex/Witch/Illusioner/Zombie Villager/Zombie/Drowned/Husk/Zombie Pigman
function cu:get/armor_quantity
execute store result score #armorQuantity expExtra run data get storage cu:get itemQuantity
scoreboard players set #result expExtra 0
execute if score #armorQuantity expExtra matches 1.. run function cu:library/experience/extra-armor
scoreboard players set #1 calcu_temp 5
scoreboard players set #2 calcu_temp 5
scoreboard players operation #1 calcu_temp += #result expExtra
scoreboard players operation #2 calcu_temp += #result expExtra
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:drowned,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:drowned,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:husk,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:husk,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:zombified_piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:zombified_piglin,nbt=!{IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp

# Baby Zombie Villager, Baby Zombie, Baby Drowned, Baby Husk, Baby Zombie Pigman
function cu:get/armor_quantity
execute store result score #armorQuantity expExtra run data get storage cu:get itemQuantity
scoreboard players set #result expExtra 0
execute if score #armorQuantity expExtra matches 1.. run function cu:library/experience/extra-armor
scoreboard players set #1 calcu_temp 12
scoreboard players set #2 calcu_temp 12
scoreboard players operation #1 calcu_temp += #result expExtra
scoreboard players operation #2 calcu_temp += #result expExtra
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:zombified_piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:zombified_piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp

# Blaze, Evoker, Guardian, Elder Guardian
scoreboard players set #1 calcu_temp 10
scoreboard players set #2 calcu_temp 10
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s expMax = #2 calcu_temp

# Endermite
execute if entity @s[type=minecraft:endermite] run scoreboard players set @s expMin 3
execute if entity @s[type=minecraft:endermite] run scoreboard players set @s expMax 3

# Slime/Magma Cube/Baby piglin
scoreboard players set #1 calcu_temp 1
scoreboard players set #2 calcu_temp 1
execute store result score #3 calcu_temp run data get entity @s Size
scoreboard players operation #1 calcu_temp += #3 calcu_temp
scoreboard players operation #2 calcu_temp += #3 calcu_temp
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s expMax = #2 calcu_temp
execute if entity @s[type=minecraft:piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMin = #1 calcu_temp
execute if entity @s[type=minecraft:piglin,nbt={IsBaby:1b}] run scoreboard players operation @s expMax = #2 calcu_temp

# Ravager
execute if entity @s[type=minecraft:ravager] run scoreboard players set @s expMin 20
execute if entity @s[type=minecraft:ravager] run scoreboard players set @s expMax 20

# Wither
execute if entity @s[type=minecraft:wither] run scoreboard players set @s expMin 50
execute if entity @s[type=minecraft:wither] run scoreboard players set @s expMax 50

# Ender Dragon
## nope
