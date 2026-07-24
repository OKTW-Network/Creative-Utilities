data modify storage cu:internal config.register.produce_catalog.entry_in_development merge value {type:'entry',specification:{}}
data modify storage cu:internal config.register.produce_catalog.entry_in_development.specification.description set from storage cu:internal config.register.produce_catalog.current_entry.specification.description

data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:internal config.register.produce_catalog.current_entry.specification.type
execute if data storage cu:internal {dummy:'number_range'} run return run function cu:config/register/_func/produce_catalog/develop_entry/develop_specification/number_range
execute if data storage cu:internal {dummy:'selection'} run return run function cu:config/register/_func/produce_catalog/develop_entry/develop_specification/selection
return fail
