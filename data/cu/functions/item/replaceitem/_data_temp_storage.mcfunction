execute if data storage cu:item replaceitem.input.Slot run data remove storage cu:item replaceitem.input.Slot
execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:item replaceitem.input
