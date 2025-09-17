scoreboard players set #item.simulate_container.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input, specific position in cu:simulation not loaded, or error.
#  []     : The result.
data remove storage cu:io item.simulate_container.Result
execute in cu:simulation unless loaded 0 1 0 run return run function cu:item/simulate_container/_return_fail
execute unless data storage cu:io item.simulate_container.Input[{}] run return run function cu:item/simulate_container/_return_fail

scoreboard players set #item.simulate_container.FUNCTION_STAGE cu-io 1
execute in cu:simulation run data modify block 0 1 0 Items set value []
execute in cu:simulation positioned 0 1 0 run function cu:item/simulate_container/_func/simulate_container

scoreboard players set #item.simulate_container.FUNCTION_STAGE cu-io -1
function cu:item/simulate_container/_reset_function

return run execute if data storage cu:io item.simulate_container.Result
