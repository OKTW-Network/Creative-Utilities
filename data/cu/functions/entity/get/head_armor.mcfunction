execute if entity @s[type=minecraft:player] run data modify storage cu:get item append from entity @s Inventory[{Slot:103b}]
execute if entity @s[type=!minecraft:player] run data modify storage cu:get item append from entity @s ArmorItems[3]
