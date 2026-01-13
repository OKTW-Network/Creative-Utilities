data modify storage cu:io config.record.Input.namespace set from storage cu:internal config.record.world.setup.namespace_list[0]
data remove storage cu:internal config.record.world.setup.namespace_list[0]
scoreboard players set #config.record.Option.force_apply cu-io 0
function cu:config/record/world/easy_apply_namespace_default/main
execute if data storage cu:internal config.record.world.setup.namespace_list[0] run function cu:config/record/world/setup/_func