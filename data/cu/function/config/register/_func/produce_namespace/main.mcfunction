data remove storage cu:internal config.register.produce_namespace.Result

execute unless function cu:config/register/_func/produce_namespace/validate_namespace_id/main run return fail
data modify storage cu:internal config.register.produce_namespace.product_in_development.namespace set string storage cu:internal config.register.produce_namespace.Input.namespace
data modify storage cu:internal config.register.produce_namespace.product_in_development.name set from storage cu:internal config.register.produce_namespace.Input.name

execute if data storage cu:internal config.register.produce_namespace.Input.world_catalog[0] run function cu:config/register/_func/produce_namespace/develop_world_catalog
execute if data storage cu:internal config.register.produce_namespace.Input.player_catalog[0] run function cu:config/register/_func/produce_namespace/develop_player_catalog
execute unless data storage cu:internal config.register.produce_namespace.product_in_development.world_catalog[0] unless data storage cu:internal config.register.produce_namespace.product_in_development.player_catalog[0] run return fail

data modify storage cu:internal dummy set value {key:''}
data modify storage cu:internal dummy.key set string storage cu:internal config.register.produce_namespace.Input.namespace
function cu:config/register/_func/produce_namespace/record_namespace_id with storage cu:internal dummy

return run data modify storage cu:internal config.register.produce_namespace.Result set from storage cu:internal config.register.produce_namespace.product_in_development
