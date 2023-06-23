execute if entity @s[type=minecraft:player] run data modify storage cu:get item append from entity @s Inventory[{Slot:102b}]
execute if entity @s[type=!minecraft:player] run data modify storage cu:get item append from entity @s ArmorItems[2]
