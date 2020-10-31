execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glass_pane",Count:1b},PickupDelay:32767s,Tags:["CU_SummonItem"]}
data modify entity @e[tag=CU_SummonItem,limit=1] Item set from storage cu:summon item
data modify entity @e[tag=CU_SummonItem,limit=1] PickupDelay set value 0s
execute if score #pickupDelay summonItem matches 1.. store result entity @e[tag=CU_SummonItem,limit=1] PickupDelay short 1 run scoreboard players get #pickupDelay summonItem
tag @e[tag=CU_SummonItem,limit=1] remove CU_SummonItem
