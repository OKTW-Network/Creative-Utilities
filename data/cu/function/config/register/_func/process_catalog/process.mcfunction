function cu:config/register/_func/process_catalog/set_current
data modify storage cu:internal config.register.entry_result set value {}
scoreboard players set #config.register.entry_resulting_flag cu-internal 1
function cu:config/register/_func/process_catalog/process_entry/main
execute if score #config.register.entry_resulting_flag cu-internal matches 2 run data modify storage cu:internal config.register.catalog_result_stack append value []
execute if score #config.register.entry_resulting_flag cu-internal matches 1..2 run data modify storage cu:internal config.register.catalog_result_stack[-1] append from storage cu:internal config.register.entry_result
execute if data storage cu:internal config.register.prior_entry_stack[0] unless data storage cu:internal config.register.prior_entry_stack[0][0] run function cu:config/register/_func/process_catalog/solve_result_stack

scoreboard players set #config.register.process_catalog.stop_recur cu-internal 1
execute if data storage cu:internal config.register.current_catalog[0] run scoreboard players set #config.register.process_catalog.stop_recur cu-internal 0
execute if data storage cu:internal config.register.prior_entry_stack[0][0] run scoreboard players set #config.register.process_catalog.stop_recur cu-internal 0
execute if score #config.register.process_catalog.stop_recur cu-internal matches 1 if data storage cu:internal config.register.catalog_result_stack[0][0] run data modify storage cu:internal config.register.processed_catalog set from storage cu:internal config.register.catalog_result_stack[0]
execute if score #config.register.process_catalog.stop_recur cu-internal matches 0 run function cu:config/register/_func/process_catalog/process