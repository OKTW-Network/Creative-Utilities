execute store result score #1 temp run data get entity @s ArmorDropChances[0] 1.0
execute store result score #2 temp run data get entity @s ArmorDropChances[1] 1.0
execute store result score #3 temp run data get entity @s ArmorDropChances[2] 1.0
execute store result score #4 temp run data get entity @s ArmorDropChances[3] 1.0
execute store result score #5 temp run data get entity @s HandDropChances[0] 1.0
execute store result score #6 temp run data get entity @s HandDropChances[1] 1.0

data modify storage cu:get item set value []
execute unless score #1 temp matches 100 run function cu:get/armor_feet
execute unless score #2 temp matches 100 run function cu:get/armor_legs
execute unless score #3 temp matches 100 run function cu:get/armor_chest
execute unless score #4 temp matches 100 run function cu:get/armor_head
execute unless score #5 temp matches 100 run function cu:get/hand_main
execute unless score #6 temp matches 100 run function cu:get/hand_off
