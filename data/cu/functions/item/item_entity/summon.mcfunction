execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b},PickupDelay:32767s,Tags:["cu.itemEntityInit"]}
data modify entity @e[tag=cu.itemEntityInit,limit=1] Item set from storage cu:item input

data modify storage cu:item input set value {}
