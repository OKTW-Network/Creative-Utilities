# Known issue
#  MC-260591 "can't find entities across dimensions", fixed in 25w34a(1.21.9)(pack format 84.0).
# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players set #entity.target.select.uuid_list.FUNCTION_STAGE cu-io 0
scoreboard players reset entity.target.select.uuid_list.Result cu-io
execute unless data storage cu:io entity.target.select.uuid_list.Input[0] run return run function cu:entity/target/select/uuid_list/_return_fail

scoreboard players set #entity.target.select.uuid_list.FUNCTION_STAGE cu-io 1
function cu:entity/target/select/uuid_list/_func/select_uuid_list

scoreboard players set #entity.target.select.uuid_list.FUNCTION_STAGE cu-io -1
function cu:entity/target/select/uuid_list/_reset_function

return run execute unless score entity.target.select.uuid_list.Result cu-io matches 0 run scoreboard players get entity.target.select.uuid_list.Result cu-io
