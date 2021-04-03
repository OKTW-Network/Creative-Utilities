data modify storage cu:item input set from entity @s Item
kill @s
function cu:item/item_entity/summon
data modify entity @e[tag=cu.itemEntityInit,limit=1] PickupDelay set value 0s
tag @e[tag=cu.itemEntityInit,limit=1] remove cu.itemEntityInit
