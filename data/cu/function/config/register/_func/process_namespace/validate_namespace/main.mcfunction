data modify storage cu:internal dummy set value {key:''}
data modify storage cu:internal dummy.key set string storage cu:internal config.register.current_namespace.namespace
execute if data storage cu:internal dummy{key:''} run return fail
return run function cu:config/register/_func/process_namespace/validate_namespace/macro with storage cu:internal dummy