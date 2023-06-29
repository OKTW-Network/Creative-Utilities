execute if entity @s[type=minecraft:player] run data modify storage cu:get item append from entity @s SelectedItem
execute if entity @s[type=!minecraft:player] run data modify storage cu:get item append from entity @s HandItems[0]
