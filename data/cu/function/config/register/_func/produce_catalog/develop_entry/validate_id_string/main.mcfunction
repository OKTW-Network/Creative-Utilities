data modify storage cu:internal dummy set value {key:''}
data modify storage cu:internal dummy.key set string storage cu:internal config.register.produce_catalog.current_entry.id
execute if data storage cu:internal dummy{key:''} run return fail
return run function cu:config/register/_func/produce_catalog/develop_entry/validate_id_string/macro with storage cu:internal dummy
