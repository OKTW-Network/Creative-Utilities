scoreboard players remove @s cu.item.giveOwnerTimer 1
execute if score @s cu.item.giveOwnerTimer matches ..0 run function cu:item/item_entity/owner_timer/remove_owner
