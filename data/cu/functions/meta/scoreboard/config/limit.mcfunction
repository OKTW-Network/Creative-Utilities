execute unless score #cu$general.print_version Config matches 0..2 run scoreboard players set #cu$general.print_version Config 2

execute unless score #cu$workaround.tick.starts_early Config matches 0..1 run scoreboard players set #cu$workaround.tick.starts_early Config 0

execute unless score #cu$trigger.use_item.double_click_timeout Config matches 1..20 run scoreboard players set #cu$trigger.use_item.double_click_timeout Config 8
