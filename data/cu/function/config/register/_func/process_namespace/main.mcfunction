data modify storage cu:internal config.register.namespace_keys set value {}
data modify storage cu:internal config.register.namespace_result set value {}
data remove storage cu:internal config.register.processed_namespace
function cu:config/register/_func/process_namespace/process
return run execute if data storage cu:internal config.register.processed_namespace