data modify storage cu:internal config.register.entry_result.name set from storage cu:internal config.register.current_entry.name
data modify storage cu:internal config.register.entry_result.description set from storage cu:internal config.register.current_entry.description

execute unless function cu:config/register/_func/process_catalog/process_entry/validate_id/main run return run scoreboard players set #config.register.entry_resulting_flag cu-internal 0
function cu:config/register/_func/process_catalog/process_entry/set_id
execute if data storage cu:internal config.register.group_path[-1] run data modify storage cu:internal config.register.entry_result.group set from storage cu:internal config.register.group_path[-1]

execute if data storage cu:internal config.register.current_entry.specification{} run return run function cu:config/register/_func/process_catalog/process_entry/process_specification/main
execute if data storage cu:internal config.register.current_entry.group[0] run return run function cu:config/register/_func/process_catalog/process_entry/process_group
return run scoreboard players set #config.register.entry_resulting_flag cu-internal 0