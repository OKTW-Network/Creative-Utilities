scoreboard players set #2 temp 0
execute store result score #3 temp run data get entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 temp += #3 temp
execute store result score #3 temp run data get entity @s ArmorItems[1].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 temp += #3 temp
execute store result score #3 temp run data get entity @s ArmorItems[2].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 temp += #3 temp
execute store result score #3 temp run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 temp += #3 temp
scoreboard players set #3 temp 80
scoreboard players operation #3 temp *= #2 temp
scoreboard players operation #1 temp -= #3 temp
