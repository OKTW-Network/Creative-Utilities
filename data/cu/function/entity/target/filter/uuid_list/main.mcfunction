# Known issue
#  MC-260591 "can't find entities across dimensions", fixed in 25w34a(1.21.9)(pack format 84.0).
# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players set #entity.target.filter.uuid_list.FUNCTION_STAGE cu-io 0
scoreboard players reset #entity.target.filter.uuid_list.Result cu-io
execute unless data storage cu:io entity.target.filter.uuid_list.Input[0] run return run function cu:entity/target/filter/uuid_list/_return_fail
function cu:entity/target/filter/_normalize_option

scoreboard players set #entity.target.filter.uuid_list.FUNCTION_STAGE cu-io 1
function cu:entity/target/filter/uuid_list/_func/select_uuid_list
execute if score #entity.target.filter.Option.reverse cu-io matches 0 store result score #entity.target.filter.uuid_list.Result cu-io run tag @e[tag=!cu-internal.entity.target.filter.uuid_list.1] remove cu-io.entity.target
execute if score #entity.target.filter.Option.reverse cu-io matches 1 store result score #entity.target.filter.uuid_list.Result cu-io run tag @e[tag=cu-internal.entity.target.filter.uuid_list.1] remove cu-io.entity.target
tag @e remove cu-internal.entity.target.filter.uuid_list.1

scoreboard players set #entity.target.filter.uuid_list.FUNCTION_STAGE cu-io -1
function cu:entity/target/filter/uuid_list/_reset_function

return run execute unless score #entity.target.filter.uuid_list.Result cu-io matches 0 run scoreboard players get #entity.target.filter.uuid_list.Result cu-io
