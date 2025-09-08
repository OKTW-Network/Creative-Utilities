data remove storage cu:item simulate_container.result
data remove storage cu:item simulate_container._insert
scoreboard players set #item.simulate_container._insertShift cu 0
scoreboard players set #item.simulate_container._insertionCount cu 0
execute in cu:simulation run data modify block 0 1 0 Items set value []
execute if data storage cu:item simulate_container.input[0] run function cu:item/simulate_container/_recursive

data remove storage cu:item simulate_container.input
data remove storage cu:item simulate_container._current
data remove storage cu:item simulate_container._insert
