data modify storage cu:internal dummy set value {key:''}
data modify storage cu:internal dummy.key set string storage cu:internal config.register.produce_namespace.Input.namespace
execute if data storage cu:internal dummy{key:''} run return fail
return run function cu:config/register/_func/produce_namespace/validate_namespace_string/macro with storage cu:internal dummy
