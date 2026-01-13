data modify storage cu:internal config.register.prior_entry_stack set value []
data modify storage cu:internal config.register.entry_id_key_stack set value [{}]
data modify storage cu:internal config.register.group_path set value []
data modify storage cu:internal config.register.catalog_result_stack set value [[]]
data remove storage cu:internal config.register.processed_catalog
function cu:config/register/_func/process_catalog/process
return run execute if data storage cu:internal config.register.processed_catalog