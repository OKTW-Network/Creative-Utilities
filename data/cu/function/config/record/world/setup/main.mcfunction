data modify storage cu:internal config.record.world.setup.namespace_list set value []
data modify storage cu:internal config.record.world.setup.namespace_list append from storage cu:cache config_registry[].namespace
execute if data storage cu:internal config.record.world.setup.namespace_list[0] run function cu:config/record/world/setup/_func