data modify storage cu:internal dummy set value {key:''}
data modify storage cu:internal dummy.key set string storage cu:internal config.register.current_entry.id
execute if data storage cu:internal dummy{key:''} run return run scoreboard players set #config.register.entry_resulting_flag cu-internal 0
return run function cu:config/register/_func/process_catalog/process_entry/validate_id/macro with storage cu:internal dummy