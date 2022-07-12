function cu:item/item_entity/summon
data modify entity @e[tag=cu.item.dummyItemEntity,limit=1] Owner set from storage cu:item owner
scoreboard players set @e[tag=cu.item.dummyItemEntity,limit=1] cu.item.giveOwnerTimer 20
tag @e[tag=cu.item.dummyItemEntity,limit=1] add cu.haveOwner
data modify entity @e[tag=cu.item.dummyItemEntity,limit=1] PickupDelay set value 0s
tag @e[tag=cu.item.dummyItemEntity,limit=1] remove cu.item.dummyItemEntity

execute if data storage cu:item input{} run data modify storage cu:item owner set value [I;0,0,0,0]

execute if data storage cu:item input[0] run function cu:item/give
