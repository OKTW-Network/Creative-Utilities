function cu:item/simulate_container/_slot/27
data modify storage cu:item simulate_container._value set from storage cu:item simulate_container._slot.27
data remove storage cu:item simulate_container._current.value.Slot
data modify storage cu:item simulate_container._value[] merge from storage cu:item simulate_container._current.value
execute in cu:data_temp run data modify block 0 1 0 Items set from storage cu:item simulate_container._value

data remove storage cu:item simulate_container._value
