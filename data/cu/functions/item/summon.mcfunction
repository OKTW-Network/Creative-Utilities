function cu:item/item_entity/summon
data modify entity @e[tag=cu.item.dummyItemEntity,limit=1] PickupDelay set from storage cu:item pickupDelay
# TODO random motion
### cause visual issue, MC-156968 resolved as "Won't Fix".
tag @e[tag=cu.item.dummyItemEntity,limit=1] remove cu.item.dummyItemEntity

execute if data storage cu:item input{} run data modify storage cu:item pickupDelay set value 0s

execute if data storage cu:item input[0] run function cu:item/summon
