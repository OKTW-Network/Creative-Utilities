data modify storage cu:internal dummy set value {namespace:'',id:''}
data modify storage cu:internal dummy.namespace set from storage cu:io config.record.Input.namespace
data modify storage cu:internal dummy.id set from storage cu:internal config.record.world.easy_apply_namespace_default.namespace_content.player_catalog[0].id
return run function cu:config/record/world/lazy_get_player_id with storage cu:internal dummy