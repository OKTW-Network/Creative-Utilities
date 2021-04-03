scoreboard players remove @s giveOwnerTimer 1
execute if score @s giveOwnerTimer matches ..0 run function cu:item/item_entity/owner_timer/remove_owner
