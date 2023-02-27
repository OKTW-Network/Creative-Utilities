data modify storage cu:item simulate_container._value set from storage cu:item simulate_container._current.value
data modify storage cu:item simulate_container._value[] merge value {id:"minecraft:structure_void",Count:1b,tag:{CustomData:{cu:{Type:"dummy",id:"item.simulate_container.dummy"}}}}
execute in cu:data_temp run data modify block 0 1 0 Items set from storage cu:item simulate_container._value

data remove storage cu:item simulate_container._value
