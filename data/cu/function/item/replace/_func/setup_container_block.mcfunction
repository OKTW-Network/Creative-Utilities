function cu:dimension/simulation/primary/container_block/reset_inventory
data modify storage cu:io item.replace.Input merge value {Slot:0b}
return run execute at @e[type=minecraft:marker,limit=1,tag=cu-Marker.simulation.container_block] run data modify block ~ ~ ~ Items append from storage cu:io item.replace.Input