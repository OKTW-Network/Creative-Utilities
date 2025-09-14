scoreboard players set #value.rotation_to_vector.FUNCTION_STAGE cu-io 0
data remove storage cu:io value.rotation_to_vector.Result
execute unless data storage cu:io value.rotation_to_vector.Input[] run return run function cu:value/rotation_to_vector/_return_fail

scoreboard players set #value.rotation_to_vector.FUNCTION_STAGE cu-io 1
data modify storage cu:io value.rotation_to_vector.Result set value [0.0d,0.0d,0.0d]
execute in cu:simulation positioned 1 9 1 summon minecraft:marker run function cu:value/rotation_to_vector/_func

scoreboard players set #value.rotation_to_vector.FUNCTION_STAGE cu-io -1
function cu:value/rotation_to_vector/_reset_function

return run execute if data storage cu:io value.rotation_to_vector.Result
