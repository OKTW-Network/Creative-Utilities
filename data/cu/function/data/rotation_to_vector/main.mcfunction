scoreboard players set #data.rotation_to_vector.FUNCTION_STAGE cu-io 0
# Result
#  absent : invalid input or error
#  []     : result
data remove storage cu:io data.rotation_to_vector.Result
execute unless data storage cu:io data.rotation_to_vector.Input[] run return run function cu:data/rotation_to_vector/_return_fail

scoreboard players set #data.rotation_to_vector.FUNCTION_STAGE cu-io 1
execute in cu:simulation positioned 0 0 0 summon minecraft:marker run function cu:data/rotation_to_vector/_func

scoreboard players set #data.rotation_to_vector.FUNCTION_STAGE cu-io -1
function cu:data/rotation_to_vector/_reset_function

return run execute if data storage cu:io data.rotation_to_vector.Result