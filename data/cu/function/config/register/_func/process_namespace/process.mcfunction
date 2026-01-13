data modify storage cu:internal config.register.namespace_result set value {namespace:''}
data modify storage cu:internal config.register.namespace_result.name set from storage cu:internal config.register.current_namespace.name

execute unless function cu:config/register/_func/process_namespace/validate_namespace/main run return fail
data modify storage cu:internal config.register.namespace_result.namespace set string storage cu:internal config.register.current_namespace.namespace

execute if data storage cu:internal config.register.current_namespace.world_catalog[0] run function cu:config/register/_func/process_namespace/process_world_catalog
execute if data storage cu:internal config.register.current_namespace.player_catalog[0] run function cu:config/register/_func/process_namespace/process_player_catalog
execute unless data storage cu:internal config.register.namespace_result.world_catalog[0] unless data storage cu:internal config.register.namespace_result.player_catalog[0] run return fail

data modify storage cu:internal config.register.processed_namespace set from storage cu:internal config.register.namespace_result