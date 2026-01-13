execute unless function cu:config/record/player/easy_apply_namespace_upstream/_func/get_upstream_content/registry/main run return fail
data remove storage cu:internal config.record.player.easy_apply_namespace_upstream.world_content
execute if function cu:config/record/world/_func/check_input_player_namespace run data modify storage cu:internal config.record.player.easy_apply_namespace_upstream.world_content set from storage cu:io config.record.world.lazy_get_player_namespace.Result.record
return 1