scoreboard players set #2 calcu_temp 0
execute store result score #3 calcu_temp run data get entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 calcu_temp += #3 calcu_temp
execute store result score #3 calcu_temp run data get entity @s ArmorItems[1].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 calcu_temp += #3 calcu_temp
execute store result score #3 calcu_temp run data get entity @s ArmorItems[2].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 calcu_temp += #3 calcu_temp
execute store result score #3 calcu_temp run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation #2 calcu_temp += #3 calcu_temp
scoreboard players set #3 calcu_temp 80
scoreboard players operation #3 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp -= #3 calcu_temp
