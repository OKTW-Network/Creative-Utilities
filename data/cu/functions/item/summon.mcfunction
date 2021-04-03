function cu:item/item_entity/summon
data modify entity @e[tag=cu.itemEntityInit,limit=1] PickupDelay set from storage cu:item pickupDelay
### cause visual issue, MC-156968 resolved as "Won't Fix".
# random motion
tag @e[tag=cu.itemEntityInit,limit=1] remove cu.itemEntityInit

data modify storage cu:item pickupDelay set value 0s
