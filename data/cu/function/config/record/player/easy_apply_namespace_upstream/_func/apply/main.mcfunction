execute store success score #1 temp run function cu:config/record/player/easy_apply_namespace_upstream/_func/apply/process
scoreboard players operation #config.record.player.easy_apply_namespace_upstream.Result cu-io += #1 temp
data remove storage cu:internal config.record.player.easy_apply_namespace_upstream.registry_content[0]
execute if data storage cu:internal config.record.player.easy_apply_namespace_upstream.registry_content[0] run function cu:config/record/player/easy_apply_namespace_upstream/_func/apply/main