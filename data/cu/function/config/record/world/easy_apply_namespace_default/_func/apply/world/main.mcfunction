execute store success score #1 temp run function cu:config/record/world/easy_apply_namespace_default/_func/apply/world/process
scoreboard players operation #config.record.world.easy_apply_namespace_default.Result cu-io += #1 temp
data remove storage cu:internal config.record.world.easy_apply_namespace_default.namespace_content.world_catalog[0]
execute if data storage cu:internal config.record.world.easy_apply_namespace_default.namespace_content.world_catalog[0] run function cu:config/record/world/easy_apply_namespace_default/_func/apply/world/main