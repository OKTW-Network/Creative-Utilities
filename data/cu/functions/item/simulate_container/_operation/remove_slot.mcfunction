data modify storage cu:item simulate_container._value set from storage cu:item simulate_container._current.value
data modify storage cu:item simulate_container._value[] merge value {id:"minecraft:air",Count:0b}
execute in cu:data_temp run data modify block 0 1 0 Items append from storage cu:item simulate_container._value[]

data remove storage cu:item simulate_container._value
