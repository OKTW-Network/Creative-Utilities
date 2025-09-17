scoreboard players set #item.give_list.FUNCTION_STAGE cu-io 0
# Result
#  none : Invalid input, executor type is not minecraft:player, execution position not loaded, or error.
#  0..  : The success count.
scoreboard players reset #item.give_list.Result cu-io
execute if entity @s[type=!minecraft:player] run return run function cu:item/give_list/_return_fail
execute unless loaded ~ ~ ~ run return run function cu:item/give_list/_return_fail
execute unless data storage cu:io item.give_list.Input[{}] run return run function cu:item/give_list/_return_fail
execute unless score #item.give_list.Option.omit_owner cu-io matches 0..1 run scoreboard players set #item.give_list.Option.omit_owner cu-io 0

scoreboard players set #item.give_list.FUNCTION_STAGE cu-io 1
execute store result score #item.give_list.Result cu-io run function cu:item/give_list/_func

scoreboard players set #item.give_list.FUNCTION_STAGE cu-io -1
function cu:item/give_list/_reset_function

return run execute unless score #item.give_list.Result cu-io matches 0 run scoreboard players get #item.give_list.Result cu-io
