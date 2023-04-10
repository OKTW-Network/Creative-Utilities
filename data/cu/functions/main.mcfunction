execute as @a at @s run function cu:trigger/health
execute as @a at @s run function cu:trigger/awake
execute as @a at @s run function cu:trigger/sleeping
execute as @a at @s run function cu:trigger/moving/main
execute as @a at @s run function cu:trigger/move_to_block
execute as @a at @s run function cu:trigger/sneak/main
execute as @a at @s run function cu:trigger/shield/main
execute as @a[scores={cu.trigger.jumpCounter=1..}] at @s run function cu:trigger/jump
execute as @a[scores={cu.trigger.useItemCounter=1..}] at @s run function cu:trigger/use_item
execute as @a[scores={cu.trigger.useItemTimer=1..}] at @s run function cu:trigger/use_item_break
execute as @a[scores={cu.trigger.leaveGameCounter=1..}] at @s run function cu:trigger/join_game
execute as @a unless score @s cu.trigger.leaveGameCounter matches -2147483648..2147483647 at @s run function cu:trigger/first_time_join_game
