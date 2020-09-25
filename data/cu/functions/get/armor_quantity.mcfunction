data modify storage cu:get itemQuantity set value 0
scoreboard players set #1 calcu_temp 0
execute if data entity @s ArmorItems[0].Count run scoreboard players add #1 calcu_temp 1
execute if data entity @s ArmorItems[1].Count run scoreboard players add #1 calcu_temp 1
execute if data entity @s ArmorItems[2].Count run scoreboard players add #1 calcu_temp 1
execute if data entity @s ArmorItems[3].Count run scoreboard players add #1 calcu_temp 1
execute store result storage cu:get itemQuantity int 1 run scoreboard players get #1 calcu_temp
