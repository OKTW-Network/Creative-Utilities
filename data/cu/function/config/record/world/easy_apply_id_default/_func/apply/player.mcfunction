execute unless function cu:config/record/world/easy_apply_id_default/_func/get_player_default/main run return fail
execute if score #config.record.Option.force_apply cu-io matches 0 if function cu:config/record/world/_func/check_input_player_id run return 1
data modify storage cu:internal dummy set value {namespace:'',id:'',value:''}
data modify storage cu:internal dummy merge from storage cu:io config.record.Input
data modify storage cu:internal dummy.value set from storage cu:internal config.record.world.easy_apply_id_default.default_value
return run function cu:config/record/world/lazy_overwrite_player_id_value with storage cu:internal dummy