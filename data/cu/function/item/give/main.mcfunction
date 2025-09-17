scoreboard players set #item.give.FUNCTION_STAGE cu-io 0
# Result
#  none : Invalid input, executor type is not minecraft:player, execution position not loaded, or error.
#  0..1 : The successful.
scoreboard players reset #item.give.Result cu-io
execute if entity @s[type=!minecraft:player] run return run function cu:item/give/_return_fail
execute unless loaded ~ ~ ~ run return run function cu:item/give/_return_fail
scoreboard players set #1 temp 0
execute if data storage cu:io item.give.Input{} if data storage cu:io item.give.Input.id if data storage cu:io item.give.Input.count run scoreboard players set #1 temp 1
execute if score #1 temp matches 0 run return run function cu:item/give/_return_fail
# Option.omit_owner
#  0 : Do not apply this option.
#  1 : Omits the "Owner" of the summoned item so that anyone can pick it up.
execute unless score #item.give.Option.omit_owner cu-io matches 0..1 run scoreboard players set #item.give.Option.omit_owner cu-io 0

scoreboard players set #item.give.FUNCTION_STAGE cu-io 1
execute store result score #item.give.Result cu-io at @s run function cu:item/give/_func

scoreboard players set #item.give.FUNCTION_STAGE cu-io -1
function cu:item/give/_reset_function

return run execute unless score #item.give.Result cu-io matches 0 run scoreboard players get #item.give.Result cu-io
