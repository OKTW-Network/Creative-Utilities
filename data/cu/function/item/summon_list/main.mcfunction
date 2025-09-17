scoreboard players set #item.summon_list.FUNCTION_STAGE cu-io 0
# Result
#  none : Invalid input, execution position not loaded, or error.
#  0..  : The success count.
scoreboard players reset #item.summon_list.Result cu-io
execute unless loaded ~ ~ ~ run return run function cu:item/summon/_return_fail
execute unless data storage cu:io item.summon_list.Input[{}] run return run function cu:item/summon_list/_return_fail
execute unless score #item.summon_list.Option.pickup_delay cu-io matches 0..32767 run scoreboard players set #item.summon_list.Option.pickup_delay cu-io 0
execute unless score #item.summon_list.Option.prevent_pickup cu-io matches 0 run scoreboard players set #item.summon_list.Option.prevent_despawn cu-io 0
execute unless score #item.summon_list.Option.prevent_despawn cu-io matches 0 run scoreboard players set #item.summon_list.Option.prevent_despawn cu-io 0
execute unless score #item.summon_list.Option.invulnerable cu-io matches 0 run scoreboard players set #item.summon_list.Option.invulnerable cu-io 0

scoreboard players set #item.summon_list.FUNCTION_STAGE cu-io 1
function cu:item/summon_list/_func

scoreboard players set #item.summon_list.FUNCTION_STAGE cu-io -1
function cu:item/summon_list/_reset_function

return run execute unless score #item.summon_list.Result cu-io matches 0 run scoreboard players get #item.summon_list.Result cu-io
