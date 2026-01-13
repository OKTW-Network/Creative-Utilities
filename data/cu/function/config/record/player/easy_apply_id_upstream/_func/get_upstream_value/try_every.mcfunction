execute if function cu:config/record/world/_func/check_input_player_id run return run data modify storage cu:internal config.record.player.easy_apply_id_upstream.upstream_value set from storage cu:io config.record.world.lazy_get_player_id.Result.value
execute if function cu:config/record/player/easy_apply_id_upstream/_func/get_upstream_value/registry/main run return 1
return fail