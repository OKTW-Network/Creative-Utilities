execute as @e[tag=cu.haveOwner,scores={cu.item.giveOwnerTimer=1..}] run function cu:item/item_entity/owner_timer/main

execute as @a run function cu:trigger/health
execute as @a run function cu:trigger/awake
execute as @a run function cu:trigger/sleeping
# execute as @a run function cu:trigger/moving/main
execute as @a run function cu:trigger/sneak/main
execute as @a[scores={cu.trigger.jumpCounter=1..}] run function cu:trigger/jump
execute as @a[scores={cu.trigger.useItemCounter=1..}] run function cu:trigger/use_item
execute as @a[scores={cu.trigger.useItemTimer=1..}] run function cu:trigger/use_item-break
execute as @a[scores={cu.trigger.leaveGameCounter=1..}] run function cu:trigger/join_game
execute as @a unless score @s cu.trigger.leaveGameCounter matches -2147483648..2147483647 run function cu:trigger/first_time_join_game
