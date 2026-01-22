execute unless score @s cu-io.player.trigger.using_item_record matches 0.. run scoreboard players set @s cu-io.player.trigger.using_item_record 0
advancement revoke @s only cu:player/trigger/using_item
execute if entity @s[tag=cu-internal.player.trigger.using_item.recorded] run return run tag @s remove cu-internal.player.trigger.using_item.recorded
scoreboard players set #1 temp -1
scoreboard players operation @s cu-io.player.trigger.using_item_record *= #1 temp
return 2