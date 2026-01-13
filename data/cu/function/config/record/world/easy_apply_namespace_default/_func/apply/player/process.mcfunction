execute unless data storage cu:internal config.record.world.easy_apply_namespace_default.namespace_content.player_catalog[0].specification.default run return fail
execute if score #config.record.Option.force_apply cu-io matches 0 if function cu:config/record/world/easy_apply_namespace_default/_func/apply/player/check_player_id run return 1
data modify storage cu:internal dummy set value {namespace:'',id:'',value:''}
data modify storage cu:internal dummy.namespace set from storage cu:io config.record.Input.namespace
data modify storage cu:internal dummy.id set from storage cu:internal config.record.world.easy_apply_namespace_default.namespace_content.player_catalog[0].id
data modify storage cu:internal dummy.value set from storage cu:internal config.record.world.easy_apply_namespace_default.namespace_content.player_catalog[0].specification.default
function cu:config/record/world/lazy_overwrite_player_id_value with storage cu:internal dummy