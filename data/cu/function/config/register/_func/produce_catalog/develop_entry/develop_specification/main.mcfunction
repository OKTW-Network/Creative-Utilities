execute unless data storage cu:internal config.register.produce_catalog.current_entry.specification.type run return fail

data modify storage cu:internal config.register.produce_catalog.entry_in_development merge value {type:'entry',specification:{}}
data modify storage cu:internal config.register.produce_catalog.entry_in_development.specification.description set from storage cu:internal config.register.produce_catalog.current_entry.specification.description

execute if function cu:config/register/_func/produce_catalog/develop_entry/develop_specification/type_specific run scoreboard players set #config.register.produce_catalog.entry_develop_flag cu-internal 1

return 1
