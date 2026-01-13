execute store success score #1 temp run function cu:config/record/world/lazy_remove_world_id with storage cu:io config.record.Input
scoreboard players operation #config.record.world.easy_remove_id.success_count cu-internal += #1 temp
execute store success score #1 temp run function cu:config/record/world/lazy_remove_player_id with storage cu:io config.record.Input
scoreboard players operation #config.record.world.easy_remove_id.success_count cu-internal += #1 temp
return run scoreboard players get #config.record.world.easy_remove_id.success_count cu-internal