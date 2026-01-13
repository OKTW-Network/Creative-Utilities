data modify storage cu:internal dummy set value {id:''}
data modify storage cu:internal dummy.id set from storage cu:internal config.record.player.easy_apply_namespace_upstream.registry_content[0].id
return run function cu:config/record/player/easy_apply_namespace_upstream/_func/apply/get_upstream_value/get_world_content_id/macro with storage cu:internal dummy