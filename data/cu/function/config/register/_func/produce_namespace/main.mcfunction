data remove storage cu:internal config.register.produce_namespace.Result

data modify storage cu:internal config.register.produce_namespace.product_in_development set value {namespace:''}
data modify storage cu:internal config.register.produce_namespace.product_in_development.name set from storage cu:internal config.register.produce_namespace.Input.name

execute unless function cu:config/register/_func/produce_namespace/validate_namespace_string/main run return fail
data modify storage cu:internal config.register.produce_namespace.product_in_development.namespace set string storage cu:internal config.register.produce_namespace.Input.namespace

execute if data storage cu:internal config.register.produce_namespace.Input.world_catalog[0] run function cu:config/register/_func/produce_namespace/develop_world_catalog
execute if data storage cu:internal config.register.produce_namespace.Input.player_catalog[0] run function cu:config/register/_func/produce_namespace/develop_player_catalog
execute unless data storage cu:internal config.register.produce_namespace.product_in_development.world_catalog[0] unless data storage cu:internal config.register.produce_namespace.product_in_development.player_catalog[0] run return fail

return run data modify storage cu:internal config.register.produce_namespace.Result set from storage cu:internal config.register.produce_namespace.product_in_development
