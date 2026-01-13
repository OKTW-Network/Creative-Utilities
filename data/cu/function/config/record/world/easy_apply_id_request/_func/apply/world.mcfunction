execute unless function cu:config/record/world/easy_apply_id_request/_func/get_world_specification/main run return fail
data modify storage cu:io config.verify_request.Input.specification set from storage cu:internal config.record.world.easy_apply_id_request.specification
data modify storage cu:io config.verify_request.Input.request set from storage cu:io config.record.Input.request
execute unless function cu:config/verify_request/main run return fail
data modify storage cu:internal dummy set value {namespace:'',id:'',value:''}
data modify storage cu:internal dummy merge from storage cu:io config.record.Input
data modify storage cu:internal dummy.value set from storage cu:io config.record.Input.request
return run function cu:config/record/world/lazy_overwrite_world_id_value with storage cu:internal dummy