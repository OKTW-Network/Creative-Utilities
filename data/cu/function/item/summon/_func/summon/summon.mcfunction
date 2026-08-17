summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",count:1},Tags:["cu-internal.item.summon.newly_summoned","cu-internal.item.summon.summoned"]}
data modify entity @e[type=minecraft:item,tag=cu-internal.item.summon.newly_summoned,limit=1] Item set from storage cu:io item.summon.Input[0]
tag @e[type=minecraft:item,tag=cu-internal.item.summon.newly_summoned,limit=1] remove cu-internal.item.summon.newly_summoned
