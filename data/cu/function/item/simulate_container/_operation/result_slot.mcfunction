execute in cu:simulation run data modify storage cu:item simulate_container._result set from block 0 1 0 Items
data remove storage cu:item simulate_container._result[].id
data remove storage cu:item simulate_container._result[].count
data remove storage cu:item simulate_container._result[].components
data modify storage cu:item simulate_container.result append from storage cu:item simulate_container._result
