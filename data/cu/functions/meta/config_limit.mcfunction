execute unless score #cu$print_version Config matches 0..2 run scoreboard players set #cu$print_version Config 2
execute unless score #cu$print_init Config matches 0..1 run scoreboard players set #cu$print_init Config 0
execute unless score #cu$print_config Config matches 0..1 run scoreboard players set #cu$print_config Config 0

execute unless score #cu$use_item_click_timeout Config matches 1..20 run scoreboard players set #cu$use_item_click_timeout Config 8
