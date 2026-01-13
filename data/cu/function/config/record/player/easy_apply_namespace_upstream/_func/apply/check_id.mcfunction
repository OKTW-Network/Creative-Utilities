data modify storage cu:internal dummy set value {namespace:'',id:''}
data modify storage cu:internal dummy.namespace set from storage cu:io config.record.Input.namespace
data modify storage cu:internal dummy.id set from storage cu:internal config.record.player.easy_apply_namespace_upstream.registry_content[0].id
return run function cu:config/record/player/lax_get_id with storage cu:internal dummy