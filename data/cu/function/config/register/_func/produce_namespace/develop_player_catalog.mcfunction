data modify storage cu:internal config.register.produce_namespace.product_in_development merge value {player_catalog:[]}
data modify storage cu:internal config.register.produce_catalog.Input set from storage cu:internal config.register.produce_namespace.Input.player_catalog
execute if function cu:config/register/_func/produce_catalog/main run data modify storage cu:internal config.register.produce_namespace.product_in_development.player_catalog set from storage cu:internal config.register.produce_catalog.Result
