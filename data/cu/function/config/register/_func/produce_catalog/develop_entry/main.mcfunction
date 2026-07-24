data modify storage cu:internal config.register.produce_catalog.entry_in_development set value {}

data modify storage cu:internal config.register.produce_catalog.entry_in_development.name set from storage cu:internal config.register.produce_catalog.current_entry.name
data modify storage cu:internal config.register.produce_catalog.entry_in_development.description set from storage cu:internal config.register.produce_catalog.current_entry.description

execute unless function cu:config/register/_func/produce_catalog/develop_entry/validate_id_string/main run return fail
function cu:config/register/_func/produce_catalog/develop_entry/develop_id
execute if data storage cu:internal config.register.produce_catalog.stacked_group_path[-1] run data modify storage cu:internal config.register.produce_catalog.entry_in_development.group set from storage cu:internal config.register.produce_catalog.stacked_group_path[-1]

execute if data storage cu:internal config.register.produce_catalog.current_entry.specification{} run return run function cu:config/register/_func/produce_catalog/develop_entry/develop_specification/main
execute if data storage cu:internal config.register.produce_catalog.current_entry.group[0] run return run function cu:config/register/_func/produce_catalog/develop_entry/develop_group_placeholder
return fail
