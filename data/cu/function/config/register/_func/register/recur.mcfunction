data modify storage cu:internal config.register.produce_namespace.Input set from storage cu:io config.register.Gatherer[0]
data remove storage cu:io config.register.Gatherer[0]
execute if function cu:config/register/_func/produce_namespace/main run data modify storage cu:cache config_registry append from storage cu:internal config.register.produce_namespace.Result

execute if data storage cu:io config.register.Gatherer[0] run function cu:config/register/_func/register/recur
