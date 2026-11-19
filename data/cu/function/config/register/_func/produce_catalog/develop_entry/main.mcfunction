data modify storage cu:internal config.register.produce_catalog.entry_in_development set value {}
scoreboard players set #config.register.produce_catalog.entry_develop_flag cu-internal 0

execute unless function cu:config/register/_func/produce_catalog/develop_entry/validate_id/main run return fail
function cu:config/register/_func/produce_catalog/develop_entry/develop_id
execute if data storage cu:internal config.register.produce_catalog.stacked_group_path[-1] run data modify storage cu:internal config.register.produce_catalog.entry_in_development.group set from storage cu:internal config.register.produce_catalog.stacked_group_path[-1]
data modify storage cu:internal config.register.produce_catalog.entry_in_development.name set from storage cu:internal config.register.produce_catalog.current_entry.name
data modify storage cu:internal config.register.produce_catalog.entry_in_development.description set from storage cu:internal config.register.produce_catalog.current_entry.description

execute unless function cu:config/register/_func/produce_catalog/develop_entry/develop_specification/main unless function cu:config/register/_func/produce_catalog/develop_entry/develop_group_placeholder run return fail

data modify storage cu:internal dummy set value {key:''}
data modify storage cu:internal dummy.key set string storage cu:internal config.register.produce_catalog.current_entry.id
return run function cu:config/register/_func/produce_catalog/develop_entry/record_id with storage cu:internal dummy
