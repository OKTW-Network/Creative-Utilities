scoreboard players set #item.summon.FUNCTION_STAGE cu-io 0
# Result
#  none : Invalid input, execution position not loaded, or error.
#  0..1 : The successful.
scoreboard players reset #item.summon.Result cu-io
execute unless loaded ~ ~ ~ run return run function cu:item/summon/_return_fail
scoreboard players set #1 temp 0
execute if data storage cu:io item.summon.Input{} if data storage cu:io item.summon.Input.id if data storage cu:io item.summon.Input.count run scoreboard players set #1 temp 1
execute if score #1 temp matches 0 run return run function cu:item/summon/_return_fail
# Option.pickup_delay
#  (Suppressed when Option.prevent_pickup is set to 1.)
#  0..32766 : Specifies the pickup delay of the summoned item.
#  32767    : Prevents the summoned item from being picked up.
execute unless score #item.summon.Option.pickup_delay cu-io matches 0..32767 run scoreboard players set #item.summon.Option.pickup_delay cu-io 0
# Option.pickup_delay
#  (Suppress Option.pickup_delay if this option is set to 1.)
#  0 : Do not apply this option.
#  1 : Prevents the summoned item from being picked up.
execute unless score #item.summon.Option.prevent_pickup cu-io matches 0 run scoreboard players set #item.summon.Option.prevent_despawn cu-io 0
# Option.pickup_delay
#  0 : Do not apply this option.
#  1 : Prevents the summoned item from despawning automatically.
execute unless score #item.summon.Option.prevent_despawn cu-io matches 0 run scoreboard players set #item.summon.Option.prevent_despawn cu-io 0
# Option.pickup_delay
#  0 : Do not apply this option.
#  1 : Sets the summoned item invulnerable.
execute unless score #item.summon.Option.invulnerable cu-io matches 0 run scoreboard players set #item.summon.Option.invulnerable cu-io 0

scoreboard players set #item.summon.FUNCTION_STAGE cu-io 1
execute store result score #item.summon.Result cu-io run function cu:item/summon/_func

scoreboard players set #item.summon.FUNCTION_STAGE cu-io -1
function cu:item/summon/_reset_function

return run execute unless score #item.summon.Result cu-io matches 0 run scoreboard players get #item.summon.Result cu-io
