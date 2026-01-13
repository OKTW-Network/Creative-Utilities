data remove storage cu:internal config.register.prior_entry_stack[0]
data remove storage cu:internal config.register.entry_id_key_stack[-1]
data remove storage cu:internal config.register.group_path[-1]

scoreboard players set #1 temp 0
execute store result score #1 temp run data get storage cu:internal config.register.catalog_result_stack[-1]
execute if score #1 temp matches 2.. run data modify storage cu:internal config.register.catalog_result_stack[-2] append from storage cu:internal config.register.catalog_result_stack[-1][]
data remove storage cu:internal config.register.catalog_result_stack[-1]

execute if data storage cu:internal config.register.prior_entry_stack[0] unless data storage cu:internal config.register.prior_entry_stack[0][0] run function cu:config/register/_func/process_catalog/solve_result_stack