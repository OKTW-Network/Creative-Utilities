data modify storage cu:internal config.register.produce_catalog.current_entry set from storage cu:internal config.register.produce_catalog.stacked_entry_group[0][0]
data remove storage cu:internal config.register.produce_catalog.stacked_entry_group[0][0]
execute store result score #1 cu-internal run function cu:config/register/_func/produce_catalog/develop_entry/main
execute if score #1 cu-internal matches 2 run data modify storage cu:internal config.register.produce_catalog.product_in_development append value []
execute if score #1 cu-internal matches 1..2 run data modify storage cu:internal config.register.produce_catalog.product_in_development[-1] append from storage cu:internal config.register.produce_catalog.entry_in_development
function cu:config/register/_func/produce_catalog/solve_developing_result_stacks

scoreboard players set #config.register.produce_catalog.stop_recur cu-internal 1
execute if data storage cu:internal config.register.produce_catalog.stacked_entry_group[0][0] run scoreboard players set #config.register.produce_catalog.stop_recur cu-internal 0
execute if score #config.register.produce_catalog.stop_recur cu-internal matches 1 if data storage cu:internal config.register.produce_catalog.product_in_development[0][0] run data modify storage cu:internal config.register.produce_catalog.Result set from storage cu:internal config.register.produce_catalog.product_in_development[0]
execute if score #config.register.produce_catalog.stop_recur cu-internal matches 0 run function cu:config/register/_func/produce_catalog/recur
