execute store success score #1 cu-internal run function cu:config/record/world/lazy_remove_world_namespace with storage cu:io config.record.Input
scoreboard players operation #config.record.world.easy_remove_namespace.success_count cu-internal += #1 cu-internal
execute store success score #1 cu-internal run function cu:config/record/world/lazy_remove_player_namespace with storage cu:io config.record.Input
scoreboard players operation #config.record.world.easy_remove_namespace.success_count cu-internal += #1 cu-internal
return run scoreboard players get #config.record.world.easy_remove_namespace.success_count cu-internal
