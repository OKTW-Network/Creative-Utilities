summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b},PickupDelay:32767s,Tags:["cu.item.dummyItemEntity"]}

execute if data storage cu:item input{} run data modify entity @e[tag=cu.item.dummyItemEntity,limit=1] Item set from storage cu:item input

execute if data storage cu:item input[] run data modify entity @e[tag=cu.item.dummyItemEntity,limit=1] Item set from storage cu:item input[0]
execute if data storage cu:item input[] run data remove storage cu:item input[0]

execute unless data storage cu:item input[0] run data modify storage cu:item input set value {}
