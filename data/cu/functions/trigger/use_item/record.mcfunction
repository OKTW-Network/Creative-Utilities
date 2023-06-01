scoreboard players add @s cu.trigger.useItemRecord 1
execute if score @s cu.trigger.useItemRecord > #cu$trigger.use_item.record_timeout Config run scoreboard players reset @s cu.trigger.useItemRecord
