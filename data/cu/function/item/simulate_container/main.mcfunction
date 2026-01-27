scoreboard players set #item.simulate_container.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input, specific position in cu:simulation not loaded, or error.
#  []     : The list of result.
data remove storage cu:io item.simulate_container.Result
execute unless function cu:dimension/simulation/primary/check_loaded run return run function cu:item/simulate_container/_return_fail
execute unless data storage cu:io item.simulate_container.Input[{}] run return run function cu:item/simulate_container/_return_fail

scoreboard players set #item.simulate_container.FUNCTION_STAGE cu-io 1
function cu:dimension/simulation/primary/container_block/reset_inventory
execute at @e[type=minecraft:marker,limit=1,tag=cu-Marker.simulation.container_block] run function cu:item/simulate_container/_func/simulate_container

scoreboard players set #item.simulate_container.FUNCTION_STAGE cu-io -1
function cu:item/simulate_container/_reset_function

return run execute if data storage cu:io item.simulate_container.Result