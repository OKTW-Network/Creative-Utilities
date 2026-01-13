data modify storage cu:io config.record.Input.namespace set from storage cu:internal config.record.player.setup.namespace_list[0]
data remove storage cu:internal config.record.player.setup.namespace_list[0]
scoreboard players set #config.record.Option.force_apply cu-io 0
function cu:config/record/player/easy_apply_namespace_upstream/main
execute if data storage cu:internal config.record.player.setup.namespace_list[0] run function cu:config/record/player/setup/_func