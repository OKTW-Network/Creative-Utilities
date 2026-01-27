summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",count:1},Invulnerable:1b,Tags:["cu-internal.item.give.summoned_item"]}
data modify entity @e[type=minecraft:item,distance=0..,limit=1,tag=cu-internal.item.give.summoned_item] Item set from storage cu:io item.give.Input
execute if score #item.give.Option.omit_owner cu-io matches 0 run data modify entity @e[type=minecraft:item,distance=0..,limit=1,tag=cu-internal.item.give.summoned_item] Owner set from entity @s UUID
tag @e[type=minecraft:item,distance=0..,tag=cu-internal.item.give.summoned_item] remove cu-internal.item.give.summoned_item
return 1