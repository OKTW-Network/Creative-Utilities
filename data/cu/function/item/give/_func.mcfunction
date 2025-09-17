summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",count:1},Invulnerable:1b,Tags:["cu.item.give.summoned_item"]}
data modify entity @e[type=minecraft:item,distance=0..,tag=cu.item.give.summoned_item,limit=1] Item set from storage cu:io item.give.Input
execute if score #item.give.Option.omit_owner cu-io matches 0 run data modify entity @e[type=minecraft:item,distance=0..,tag=cu.item.give.summoned_item,limit=1] Owner set from entity @s UUID
tag @e[type=minecraft:item,distance=0..,tag=cu.item.give.summoned_item] remove cu.item.give.summoned_item

return 1
