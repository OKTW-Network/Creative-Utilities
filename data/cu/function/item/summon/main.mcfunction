# Reminder
#  This function directly merges input into the item entity instead of validating it; this causes invalid inputs to log errors.
scoreboard players set #item.summon.FUNCTION_STAGE cu-io 0
# Result
#  none : Execution position not loaded, or error.
#  0..  : The success count.
scoreboard players reset #item.summon.Result cu-io
execute unless loaded ~ ~ ~ run return run function cu:item/summon/_return_fail
execute unless data storage cu:io item.summon.Input run return run function cu:item/summon/_return_fail
execute unless data storage cu:io item.summon.Input[] run function cu:item/summon/_func/pack_input
# Option.owner
#  Absent      : Do not apply this option.
#  Player UUID : Specifies the only player to pick up the item.
#data get storage cu:io item.summon.Option.owner
# Option.pickup_delay
#  (Suppressed when "Option.prevent_pickup" is set to 1.)
#  0..32766 : Specifies the pickup delay of the summoned item.
#  32767    : Prevents the summoned item from being picked up.
execute unless score #item.summon.Option.pickup_delay cu-io matches 0..32767 run scoreboard players reset #item.summon.Option.pickup_delay cu-io
# Option.prevent_pickup
#  0 : Do not apply this option.
#  1 : Prevents the summoned item from being picked up. Suppress "Option.pickup_delay".
execute unless score #item.summon.Option.prevent_pickup cu-io matches 0..1 run scoreboard players set #item.summon.Option.prevent_pickup cu-io 0
# Option.prevent_despawn
#  0 : Do not apply this option.
#  1 : Prevents the summoned item from despawning automatically.
execute unless score #item.summon.Option.prevent_despawn cu-io matches 0..1 run scoreboard players set #item.summon.Option.prevent_despawn cu-io 0
# Option.invulnerable
#  0 : Do not apply this option.
#  1 : Sets the summoned item invulnerable.
execute unless score #item.summon.Option.invulnerable cu-io matches 0..1 run scoreboard players set #item.summon.Option.invulnerable cu-io 0

scoreboard players set #item.summon.FUNCTION_STAGE cu-io 1
function cu:item/summon/_func/summon/recur
data modify storage cu:internal dummy set value {}
execute if data storage cu:io item.summon.Option.owner run data modify storage cu:internal dummy.Owner set from storage cu:io item.summon.Option.owner
execute if score #item.summon.Option.prevent_pickup cu-io matches 1 run scoreboard players set #item.summon.Option.pickup_delay cu-io 32767
execute if score #item.summon.Option.pickup_delay cu-io matches 0..32767 store result storage cu:internal dummy.PickupDelay short 1 run scoreboard players get #item.summon.Option.pickup_delay cu-io
execute if score #item.summon.Option.prevent_despawn cu-io matches 1 run data modify storage cu:internal dummy.Age set value -32768s
execute if score #item.summon.Option.invulnerable cu-io matches 1 run data modify storage cu:internal dummy.Invulnerable set value 1b
execute as @e[type=minecraft:item,tag=cu-internal.item.summon.summoned] run data modify entity @s {} merge from storage cu:internal dummy
execute store result score #item.summon.Result cu-io run tag @e[type=minecraft:item,tag=cu-internal.item.summon.summoned] remove cu-internal.item.summon.summoned

scoreboard players set #item.summon.FUNCTION_STAGE cu-io -1
function cu:item/summon/_reset_function

return run execute unless score #item.summon.Result cu-io matches 0 run scoreboard players get #item.summon.Result cu-io
