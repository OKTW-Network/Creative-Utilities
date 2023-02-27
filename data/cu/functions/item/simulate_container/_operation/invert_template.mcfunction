execute in cu:data_temp run data modify storage cu:item simulate_container._value set from block 0 1 0 Items
data remove storage cu:item simulate_container._value[].tag
data modify storage cu:item simulate_container._value[] merge value {id:"minecraft:structure_void",Count:1b,tag:{CustomData:{cu:{Type:"dummy",id:"item.simulate_container.invertPlaceholder"}}}}
execute in cu:data_temp run data modify block 0 1 0 Items set from storage cu:item simulate_container._value
function cu:item/simulate_container/_slot/27
data modify storage cu:item simulate_container._value set from storage cu:item simulate_container._slot.27
data modify storage cu:item simulate_container._value[] merge value {id:"minecraft:structure_void",Count:1b,tag:{CustomData:{cu:{Type:"dummy",id:"item.simulate_container.dummy"}}}}
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:item simulate_container._value[]
execute in cu:data_temp run data remove block 0 1 0 Items[{tag:{CustomData:{cu:{Type:"dummy",id:"item.simulate_container.invertPlaceholder"}}}}]

data remove storage cu:item simulate_container._value
