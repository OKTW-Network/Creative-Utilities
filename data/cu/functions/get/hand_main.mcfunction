execute if entity @s[type=minecraft:player] run data modify storage cu:get item prepend from entity @s SelectedItem
execute if entity @s[type=minecraft:armor_stand] run data modify storage cu:get item prepend from entity @s HandItems[0]
