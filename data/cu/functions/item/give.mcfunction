### cause visual issue
# execute in cu:data_temp run data modify block 0 1 0 Items set value []
# execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:item input
# execute in cu:data_temp run loot give @s mine 0 1 0 minecraft:air{contentOnly:1b}

function cu:item/item_entity/summon
data modify entity @e[tag=cu.itemEntityInit,limit=1] Owner set from storage cu:item owner
scoreboard players set @e[tag=cu.itemEntityInit,limit=1] giveOwnerTimer 20
tag @e[tag=cu.itemEntityInit,limit=1] add cu.haveOwner
data modify entity @e[tag=cu.itemEntityInit,limit=1] PickupDelay set value 0s
tag @e[tag=cu.itemEntityInit,limit=1] remove cu.itemEntityInit

data modify storage cu:item owner set value [I;0,0,0,0]
