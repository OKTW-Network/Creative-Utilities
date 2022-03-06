data modify storage cu:item input set from entity @s Item
kill @s
function cu:item/item_entity/summon
data modify entity @e[tag=cu.item.dummyItemEntity,limit=1] PickupDelay set value 0s
tag @e[tag=cu.item.dummyItemEntity,limit=1] remove cu.item.dummyItemEntity
