# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players set #entity.target.filter.interaction_attack.FUNCTION_STAGE cu-io 0
scoreboard players reset #entity.target.filter.interaction_attack.Result cu-io
execute unless data storage cu:io entity.target.filter.interaction_attack.Input[3] run return run function cu:entity/target/filter/interaction_attack/_return_fail
function cu:entity/target/filter/_normalize_option

scoreboard players set #entity.target.filter.interaction_attack.FUNCTION_STAGE cu-io 1
execute as @e[type=minecraft:interaction,tag=cu-io.entity.target] if data entity @s attack.player run function cu:entity/target/filter/interaction_attack/_func
execute if score #entity.target.filter.Option.reverse cu-io matches 0 store result score #entity.target.filter.interaction_attack.Result cu-io run tag @e[tag=!cu-internal.entity.target.filter.interaction_attack.1] remove cu-io.entity.target
execute if score #entity.target.filter.Option.reverse cu-io matches 1 store result score #entity.target.filter.interaction_attack.Result cu-io run tag @e[tag=cu-internal.entity.target.filter.interaction_attack.1] remove cu-io.entity.target
tag @e remove cu-internal.entity.target.filter.interaction_attack.1

scoreboard players set #entity.target.filter.interaction_attack.FUNCTION_STAGE cu-io -1
function cu:entity/target/filter/interaction_attack/_reset_function

return run execute unless score #entity.target.filter.interaction_attack.Result cu-io matches 0 run scoreboard players get #entity.target.filter.interaction_attack.Result cu-io
