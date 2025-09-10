data modify storage cu:io item.replace_entity.Input.Slot set value 0b
execute in cu:simulation run data modify block 0 1 0 Items set value []
execute in cu:simulation run data modify block 0 1 0 Items append from storage cu:io item.replace_entity.Input
