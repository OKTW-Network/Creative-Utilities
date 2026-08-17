#Abandoned, replaced by the `item/summon`.
scoreboard players set #item.summon_list.FUNCTION_STAGE cu-io 0
scoreboard players reset #item.summon_list.Result cu-io
execute unless loaded ~ ~ ~ run return run function cu:item/summon/_return_fail
execute unless data storage cu:io item.summon_list.Input run return run function cu:item/summon_list/_return_fail

scoreboard players set #item.summon_list.FUNCTION_STAGE cu-io 1
data modify storage cu:io item.summon.Input set from storage cu:io item.summon_list.Input
scoreboard players operation #item.summon.Option.pickup_delay cu-io = #item.summon_list.Option.pickup_delay cu-io
scoreboard players operation #item.summon.Option.prevent_pickup cu-io = #item.summon_list.Option.prevent_pickup cu-io
scoreboard players operation #item.summon.Option.prevent_despawn cu-io = #item.summon_list.Option.prevent_despawn cu-io
scoreboard players operation #item.summon.Option.invulnerable cu-io = #item.summon_list.Option.invulnerable cu-io
data modify storage cu:io item.summon.Option.owner set from storage cu:io item.summon_list.Option.owner
execute store result score #item.summon_list.Result cu-io run function cu:item/summon/main

scoreboard players set #item.summon_list.FUNCTION_STAGE cu-io -1
function cu:item/summon_list/_reset_function

return run execute unless score #item.summon_list.Result cu-io matches 0 run scoreboard players get #item.summon_list.Result cu-io
