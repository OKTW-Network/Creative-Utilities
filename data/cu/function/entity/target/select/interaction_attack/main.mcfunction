# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players set #entity.target.select.interaction_attack.FUNCTION_STAGE cu-io 0
scoreboard players reset #entity.target.select.interaction_attack.Result cu-io
execute unless data storage cu:io entity.target.select.interaction_attack.Input[3] run return run function cu:entity/target/select/interaction_attack/_return_fail

scoreboard players set #entity.target.select.interaction_attack.FUNCTION_STAGE cu-io 1
execute as @e[type=minecraft:interaction] if data entity @s attack.player run function cu:entity/target/select/interaction_attack/_func

scoreboard players set #entity.target.select.interaction_attack.FUNCTION_STAGE cu-io -1
function cu:entity/target/select/interaction_attack/_reset_function

return run execute unless score #entity.target.select.interaction_attack.Result cu-io matches 0 run scoreboard players get #entity.target.select.interaction_attack.Result cu-io
