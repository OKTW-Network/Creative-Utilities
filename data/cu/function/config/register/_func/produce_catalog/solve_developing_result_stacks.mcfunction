execute unless data storage cu:internal config.register.produce_catalog.stacked_entry_group[1] run return fail
execute if data storage cu:internal config.register.produce_catalog.stacked_entry_group[0][0] run return fail

data remove storage cu:internal config.register.produce_catalog.stacked_entry_group[0]
data remove storage cu:internal config.register.produce_catalog.stacked_entry_id_keys[-1]
data remove storage cu:internal config.register.produce_catalog.stacked_group_path[-1]

scoreboard players set #1 temp 0
execute store result score #1 temp run data get storage cu:internal config.register.produce_catalog.product_in_development[-1]
execute if score #1 temp matches 2.. run data modify storage cu:internal config.register.produce_catalog.product_in_development[-2] append from storage cu:internal config.register.produce_catalog.product_in_development[-1][]
data remove storage cu:internal config.register.produce_catalog.product_in_development[-1]

function cu:config/register/_func/produce_catalog/solve_developing_result_stacks
