summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",count:1},Tags:["cu.item.summon.summoned_item"]}
data modify entity @e[type=minecraft:item,tag=cu.item.summon.summoned_item,limit=1] Item set from storage cu:io item.summon.Input
execute store result entity @e[type=minecraft:item,tag=cu.item.summon.summoned_item,limit=1] PickupDelay short 1 run scoreboard players get #item.summon.Option.pickup_delay cu-io
execute if score #item.summon.Option.prevent_pickup cu-io matches 1 run data modify entity @e[type=minecraft:item,tag=cu.item.summon.summoned_item,limit=1] PickupDelay set value 32767s
execute if score #item.summon.Option.prevent_despawn cu-io matches 1 run data modify entity @e[type=minecraft:item,tag=cu.item.summon.summoned_item,limit=1] Age set value -32768s
execute if score #item.summon.Option.invulnerable cu-io matches 1 run data modify entity @e[type=minecraft:item,tag=cu.item.summon.summoned_item,limit=1] Invulnerable set value 1b
tag @e[type=minecraft:item,tag=cu.item.summon.summoned_item] remove cu.item.summon.summoned_item

return 1
