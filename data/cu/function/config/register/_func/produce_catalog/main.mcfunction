data remove storage cu:internal config.register.produce_catalog.Result

data modify storage cu:internal config.register.produce_catalog.stacked_entry_group set value [[]]
data modify storage cu:internal config.register.produce_catalog.stacked_entry_group[0] append from storage cu:internal config.register.produce_catalog.Input[]
data modify storage cu:internal config.register.produce_catalog.stacked_entry_id_keys set value [{}]
data modify storage cu:internal config.register.produce_catalog.stacked_group_path set value []
data modify storage cu:internal config.register.produce_catalog.product_in_development set value [[]]
execute if data storage cu:internal config.register.produce_catalog.stacked_entry_group[0][0] run function cu:config/register/_func/produce_catalog/recur

scoreboard players reset #config.register.produce_catalog.stop_recur cu-internal

return run execute if data storage cu:internal config.register.produce_catalog.Result
