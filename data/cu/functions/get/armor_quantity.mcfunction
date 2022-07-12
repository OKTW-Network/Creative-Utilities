data modify storage cu:get itemQuantity set value 0
scoreboard players set #get.counter cu 0
execute if data entity @s ArmorItems[0].Count run scoreboard players add #get.counter cu 1
execute if data entity @s ArmorItems[1].Count run scoreboard players add #get.counter cu 1
execute if data entity @s ArmorItems[2].Count run scoreboard players add #get.counter cu 1
execute if data entity @s ArmorItems[3].Count run scoreboard players add #get.counter cu 1
execute store result storage cu:get itemQuantity int 1 run scoreboard players get #get.counter cu
