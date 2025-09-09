execute unless score #cu$general.broadcast_version_on_load Config matches 0..2 run scoreboard players set #cu$general.broadcast_version_on_load Config 1

execute unless score #cu$trigger.use_item.record_timeout Config matches 1..72000 run scoreboard players set #cu$trigger.use_item.record_timeout Config 1200
