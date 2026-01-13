data modify storage cu:internal config.register.entry_result merge value {type:'entry',specification:{}}
data modify storage cu:internal config.register.entry_result.specification.description set from storage cu:internal config.register.current_entry.specification.description

data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:internal config.register.current_entry.specification.type
execute if data storage cu:internal {dummy:'number_range'} run return run function cu:config/register/_func/process_catalog/process_entry/process_specification/number_range
execute if data storage cu:internal {dummy:'selection'} run return run function cu:config/register/_func/process_catalog/process_entry/process_specification/selection
return run scoreboard players set #config.register.entry_resulting_flag cu-internal 0