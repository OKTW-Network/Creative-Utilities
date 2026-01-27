function cu:dimension/simulation/primary/container_block/reset_inventory
data modify storage cu:io item.replace_entity.Input merge value {Slot:0b}
return run execute in cu:simulation run data modify block 0 1 0 Items append from storage cu:io item.replace_entity.Input