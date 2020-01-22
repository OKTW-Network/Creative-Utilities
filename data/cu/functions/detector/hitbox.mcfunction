## 1.15.2

execute store result score @s hitboxX1 run data get entity @s Pos[0] 10
execute store result score @s hitboxX2 run data get entity @s Pos[0] 10
execute store result score @s hitboxY1 run data get entity @s Pos[1] 10
execute store result score @s hitboxY2 run data get entity @s Pos[1] 10
execute store result score @s hitboxZ1 run data get entity @s Pos[2] 10
execute store result score @s hitboxZ2 run data get entity @s Pos[2] 10

# Blaze
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 18
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:blaze] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Creeper
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 16
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:creeper] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Skeleton/Stray/Villager/Witch/Vindicator/Pillager/Evoker/Illusioner/Zombie Villager/Zombie/Drowned/Husk/Zombie Pigman
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 20
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:stray] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:villager] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:villager] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:villager] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:villager] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:villager] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:wandering_trader] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wandering_trader] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wandering_trader] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wandering_trader] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wandering_trader] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:witch] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:vindicator] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pillager] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:evoker] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:illusioner] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt=!{IsBaby:1b}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:drowned] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:husk] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie_pigman] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Zombie Villager/Zombie/Drowned/Husk/Zombie Pigman
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 10
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_villager,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:drowned,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:husk,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie_pigman,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_pigman,nbt={IsBaby:1b}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Guardian
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 9
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:guardian] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Elder Guardian
scoreboard players set #calculation_temp1 numeric 10
scoreboard players set #calculation_temp2 numeric 20
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Silverfish/Endermite
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 3
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:silverfish] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:endermite] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:endermite] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:endermite] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:endermite] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:endermite] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Phantom
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 1
execute store result score #calculation_temp3 numeric run data get entity @s Size
scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
scoreboard players operation #calculation_temp2 numeric += #calculation_temp3 numeric
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:phantom] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Slime/Magma Cube
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 5
execute store result score #calculation_temp3 numeric run data get entity @s Size 5
scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
scoreboard players operation #calculation_temp2 numeric += #calculation_temp3 numeric
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:slime] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:magma_cube] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Wither Skeleton
scoreboard players set #calculation_temp1 numeric 4
scoreboard players set #calculation_temp2 numeric 24
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Enderman
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 29
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:enderman] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Spider
scoreboard players set #calculation_temp1 numeric 7
scoreboard players set #calculation_temp2 numeric 9
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:spider] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Cave Spider
scoreboard players set #calculation_temp1 numeric 4
scoreboard players set #calculation_temp2 numeric 5
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cave_spider] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Ravager
scoreboard players set #calculation_temp1 numeric 10
scoreboard players set #calculation_temp2 numeric 22
execute if entity @s[type=minecraft:ravager] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ravager] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ravager] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ravager] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ravager] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Vex
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 8
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:vex] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Ghast
scoreboard players set #calculation_temp1 numeric 20
scoreboard players set #calculation_temp2 numeric 40
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ghast] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Shulker
execute if entity @s[nbt={Peek:0}] run scoreboard players set #calculation_temp1 numeric 5
execute if entity @s[nbt={Peek:0}] run scoreboard players set #calculation_temp2 numeric 10
execute if entity @s[nbt={Peek:30}] run scoreboard players set #calculation_temp1 numeric 5
execute if entity @s[nbt={Peek:30}] run scoreboard players set #calculation_temp2 numeric 12
execute if entity @s[nbt={Peek:100}] run scoreboard players set #calculation_temp1 numeric 5
execute if entity @s[nbt={Peek:100}] run scoreboard players set #calculation_temp2 numeric 20
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:shulker] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric


# Iron Golem
scoreboard players set #calculation_temp1 numeric 7
scoreboard players set #calculation_temp2 numeric 27
execute if entity @s[type=minecraft:iron_golem] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:iron_golem] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:iron_golem] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:iron_golem] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:iron_golem] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Snow Golem
scoreboard players set #calculation_temp1 numeric 4
scoreboard players set #calculation_temp2 numeric 19
execute if entity @s[type=minecraft:snow_golem] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:snow_golem] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:snow_golem] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:snow_golem] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:snow_golem] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric


# Dolphin
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 6
execute if entity @s[type=minecraft:dolphin] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:dolphin] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:dolphin] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:dolphin] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:dolphin] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Wolf
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 9
execute if entity @s[type=minecraft:wolf,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Wolf
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[type=minecraft:wolf,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:wolf,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Polar Bear
scoreboard players set #calculation_temp1 numeric 7
scoreboard players set #calculation_temp2 numeric 14
execute if entity @s[type=minecraft:polar_bear,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Polar Bear
scoreboard players set #calculation_temp1 numeric 4
scoreboard players set #calculation_temp2 numeric 7
execute if entity @s[type=minecraft:polar_bear,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:polar_bear,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Panda
scoreboard players set #calculation_temp1 numeric 7
scoreboard players set #calculation_temp2 numeric 13
execute if entity @s[type=minecraft:panda,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Panda
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 6
execute if entity @s[type=minecraft:panda,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:panda,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Llama/Trade Llama
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 19
execute if entity @s[type=minecraft:llama,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:trader_llama,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Llama/Trade Llama
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 9
execute if entity @s[type=minecraft:llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:trader_llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:trader_llama,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Pufferfish
execute if entity @s[nbt={PuffState:0}] run scoreboard players set #calculation_temp1 numeric 2
execute if entity @s[nbt={PuffState:0}] run scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[nbt={PuffState:1}] run scoreboard players set #calculation_temp1 numeric 3
execute if entity @s[nbt={PuffState:1}] run scoreboard players set #calculation_temp2 numeric 5
execute if entity @s[nbt={PuffState:2}] run scoreboard players set #calculation_temp1 numeric 4
execute if entity @s[nbt={PuffState:2}] run scoreboard players set #calculation_temp2 numeric 7
execute if entity @s[type=minecraft:pufferfish] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pufferfish] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pufferfish] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pufferfish] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pufferfish] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Bee
scoreboard players set #calculation_temp1 numeric 6
scoreboard players set #calculation_temp2 numeric 6
execute if entity @s[type=minecraft:bee,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Bee
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 3
execute if entity @s[type=minecraft:bee,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:bee,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric


# Ocelot/Cat
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 7
execute if entity @s[type=minecraft:ocelot,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:cat,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Ocelot/Cat
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[type=minecraft:ocelot,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:ocelot,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:cat,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cat,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Cod
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 3
execute if entity @s[type=minecraft:cod] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cod] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cod] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cod] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cod] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Salmon
scoreboard players set #calculation_temp1 numeric 4
scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[type=minecraft:salmon] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:salmon] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:salmon] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:salmon] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:salmon] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Tropical Fish
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:tropical_fish] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Parrot
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 9
execute if entity @s[type=minecraft:parrot] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:parrot] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:parrot] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:parrot] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:parrot] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Bat
scoreboard players set #calculation_temp1 numeric 3
scoreboard players set #calculation_temp2 numeric 9
execute if entity @s[type=minecraft:bat] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:bat] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:bat] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:bat] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:bat] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Chicken
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 7
execute if entity @s[type=minecraft:chicken,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Chicken
scoreboard players set #calculation_temp1 numeric 1
scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[type=minecraft:chicken,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:chicken,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Pig
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 9
execute if entity @s[type=minecraft:pig,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Pig
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 5
execute if entity @s[type=minecraft:pig,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:pig,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Cow/Mooshroom
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 14
execute if entity @s[type=minecraft:cow,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:mooshroom,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Cow/Mooshroom
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 7
execute if entity @s[type=minecraft:cow,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:cow,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:mooshroom,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mooshroom,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Sheep
scoreboard players set #calculation_temp1 numeric 5
scoreboard players set #calculation_temp2 numeric 13
execute if entity @s[type=minecraft:sheep,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Sheep
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 7
execute if entity @s[type=minecraft:sheep,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:sheep,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Rabbit
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 5
execute if entity @s[type=minecraft:rabbit,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Rabbit
scoreboard players set #calculation_temp1 numeric 1
scoreboard players set #calculation_temp2 numeric 3
execute if entity @s[type=minecraft:rabbit,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:rabbit,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Turtle
scoreboard players set #calculation_temp1 numeric 6
scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[type=minecraft:turtle,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Turtle
scoreboard players set #calculation_temp1 numeric 2
scoreboard players set #calculation_temp2 numeric 1
execute if entity @s[type=minecraft:turtle,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:turtle,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# Squid
scoreboard players set #calculation_temp1 numeric 4
scoreboard players set #calculation_temp2 numeric 8
execute if entity @s[type=minecraft:squid] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:squid] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:squid] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:squid] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric

# Horse/Skeleton Horse/Zombie Horse/Donkey/Mule
scoreboard players set #calculation_temp1 numeric 7
scoreboard players set #calculation_temp2 numeric 16
execute if entity @s[type=minecraft:horse,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:donkey,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:mule,nbt={Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt={Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt={Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt={Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt={Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric

# baby Horse/Skeleton Horse/Zombie Horse/Donkey/Mule
scoreboard players set #calculation_temp1 numeric 4
scoreboard players set #calculation_temp2 numeric 8
execute if entity @s[type=minecraft:horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:skeleton_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:zombie_horse,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:donkey,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:donkey,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
execute if entity @s[type=minecraft:mule,nbt=!{Age:0}] run scoreboard players operation @s hitboxX1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt=!{Age:0}] run scoreboard players operation @s hitboxX2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ1 += #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt=!{Age:0}] run scoreboard players operation @s hitboxZ2 -= #calculation_temp1 numeric
execute if entity @s[type=minecraft:mule,nbt=!{Age:0}] run scoreboard players operation @s hitboxY2 += #calculation_temp2 numeric
