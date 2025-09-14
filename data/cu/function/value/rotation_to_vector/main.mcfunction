scoreboard players set #value.rotation_to_vector.FUNCTION_STAGE cu-io 0
# Result
#  absent : invalid input or error
#  []     : result
data remove storage cu:io value.rotation_to_vector.Result

scoreboard players set #value.rotation_to_vector.FUNCTION_STAGE cu-io 1
execute in cu:simulation positioned 1 9 1 summon minecraft:marker run function cu:value/rotation_to_vector/_func

scoreboard players set #value.rotation_to_vector.FUNCTION_STAGE cu-io -1
function cu:value/rotation_to_vector/_reset_function

return run execute if data storage cu:io value.rotation_to_vector.Result
