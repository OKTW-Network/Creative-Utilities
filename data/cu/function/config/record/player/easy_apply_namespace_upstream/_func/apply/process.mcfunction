execute unless function cu:config/record/player/easy_apply_namespace_upstream/_func/apply/get_upstream_value/main run return fail
execute if score #config.record.Option.force_apply cu-io matches 0 if function cu:config/record/player/easy_apply_namespace_upstream/_func/apply/check_id run return 1
data modify storage cu:internal dummy set value {namespace:'',id:'',value:''}
data modify storage cu:internal dummy.namespace set from storage cu:io config.record.Input.namespace
data modify storage cu:internal dummy.id set from storage cu:internal config.record.player.easy_apply_namespace_upstream.registry_content[0].id
data modify storage cu:internal dummy.value set from storage cu:internal config.record.player.easy_apply_namespace_upstream.upstream_value
return run function cu:config/record/player/lax_overwrite_id_value with storage cu:internal dummy