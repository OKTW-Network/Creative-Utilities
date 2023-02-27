data modify storage cu:item simulate_container.result append value []
execute in cu:data_temp run data modify storage cu:item simulate_container.result[-1] append from block 0 1 0 Items[].Slot
