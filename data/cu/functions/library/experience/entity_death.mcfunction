## 1.19.2

data modify storage cu:library experience.result set value [0,0]

# Fox
execute if entity @s[type=minecraft:fox] run data modify storage cu:library experience.result set value [1,2]

# Axolotl/Bee/Cat/Ocelot/Chicken/Cod/Salmon/Pufferfish/Tropical Fish/Cow/Horse/Llama/Trader Llama/Mooshroom/Panda/Parrot/Pig/Polar Bear/Rabbit/Sheep/Goat/Squid/Glow Squid/Turtle/Wolf/baby Wolf
scoreboard players set #library.experience._is_target cu 0
execute if entity @s[type=minecraft:axolotl,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:bee,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:cat,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:frog] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:ocelot,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:chicken,predicate=!minecraft:is_baby,nbt=!{IsChickenJockey:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:cod] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:salmon] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:pufferfish] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:cow,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:horse,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:llama,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:mooshroom,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:panda,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:parrot,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:pig,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:polar_bear,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:rabbit,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:sheep,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:goat,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:squid] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:glow_squid] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:turtle,predicate=!minecraft:is_baby] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:wolf] run scoreboard players set #library.experience._is_target cu 1
execute if score #library.experience._is_target cu matches 1 run data modify storage cu:library experience.result set value [1,3]

# Creeper/Enderman/Ghast/Phantom/Shulker/Silverfish/Spider/Cave Spider/Skeleton/Stray/Wither Skeleton/Vindicator/Pillager/Vex/Witch/Illusioner/Zombie Villager/Zombie/Drowned/Husk/Zombie Pigman
scoreboard players set #library.experience._is_target cu 0
execute if entity @s[type=minecraft:creeper] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:enderman] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:ghast] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:phantom] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:shulker] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:silverfish] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:spider] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:cave_spider] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:skeleton] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:stray] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:vindicator] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:pillager] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:vex] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:witch] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:illusioner] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:drowned,nbt=!{IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:husk,nbt=!{IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:piglin,nbt=!{IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:zombified_piglin,nbt=!{IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:warden] run scoreboard players set #library.experience._is_target cu 1
execute if score #library.experience._is_target cu matches 1 run function cu:library/experience/extra/equipment/main
execute if score #library.experience._is_target cu matches 1 run scoreboard players set #library.experience._final cu 5
execute if score #library.experience._is_target cu matches 1 run scoreboard players operation #library.experience._final cu += #library.experience.extra.result cu
execute if score #library.experience._is_target cu matches 1 store result storage cu:library experience.result[0] int 1.0 run scoreboard players get #library.experience._final cu
execute if score #library.experience._is_target cu matches 1 store result storage cu:library experience.result[1] int 1.0 run scoreboard players get #library.experience._final cu

# Baby Zombie Villager/Baby Zombie/Baby Drowned/Baby Husk/Baby Zombie Pigman
scoreboard players set #library.experience._is_target cu 0
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:zombified_piglin,nbt={IsBaby:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if score #library.experience._is_target cu matches 1 run function cu:library/experience/extra/equipment/main
execute if score #library.experience._is_target cu matches 1 run scoreboard players set #library.experience._final cu 12
execute if score #library.experience._is_target cu matches 1 run scoreboard players operation #library.experience._final cu += #library.experience.extra.result cu
execute if score #library.experience._is_target cu matches 1 store result storage cu:library experience.result[0] int 1.0 run scoreboard players get #library.experience._final cu
execute if score #library.experience._is_target cu matches 1 store result storage cu:library experience.result[1] int 1.0 run scoreboard players get #library.experience._final cu

# Blaze/Evoker/Guardian/Elder Guardian/Jockey Chicken
scoreboard players set #library.experience._is_target cu 0
execute if entity @s[type=minecraft:blaze] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:evoker] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:guardian] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:chicken,nbt={IsChickenJockey:1b}] run scoreboard players set #library.experience._is_target cu 1
execute if score #library.experience._is_target cu matches 1 run data modify storage cu:library experience.result set value [10,10]

# Endermite
execute if entity @s[type=minecraft:endermite] run data modify storage cu:library experience.result set value [3,3]

# Slime/Magma Cube
scoreboard players set #library.experience._is_target cu 0
execute if entity @s[type=minecraft:slime] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:magma_cube] run scoreboard players set #library.experience._is_target cu 1
execute if score #library.experience._is_target cu matches 1 run function cu:library/experience/extra/size
execute if score #library.experience._is_target cu matches 1 run scoreboard players set #library.experience._final cu 1
execute if score #library.experience._is_target cu matches 1 run scoreboard players operation #library.experience._final cu += #library.experience.extra.result cu
execute if score #library.experience._is_target cu matches 1 store result storage cu:library experience.result[0] int 1.0 run scoreboard players get #library.experience._final cu
execute if score #library.experience._is_target cu matches 1 store result storage cu:library experience.result[1] int 1.0 run scoreboard players get #library.experience._final cu

# Baby Piglin
execute if entity @s[type=minecraft:piglin,nbt={IsBaby:1b}] run data modify storage cu:library experience.result set value [1,1]

# Ravager
scoreboard players set #library.experience._is_target cu 0
execute if entity @s[type=minecraft:ravager] run scoreboard players set #library.experience._is_target cu 1
execute if entity @s[type=minecraft:piglin_brute] run scoreboard players set #library.experience._is_target cu 1
execute if score #library.experience._is_target cu matches 1 run data modify storage cu:library experience.result set value [20,20]

# Wither
execute if entity @s[type=minecraft:ravager] run data modify storage cu:library experience.result set value [50,50]

# Ender Dragon
### Unable to determine the amount to drop, will update once any method appears.
