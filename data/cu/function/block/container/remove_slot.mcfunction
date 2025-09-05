execute if data storage cu:block container.remove_slot.input[0] run data modify storage cu:block container.remove_slot.input[] merge value {id:"minecraft:air",count:0}
execute if data storage cu:block container.remove_slot.input[0] run data modify block ~ ~ ~ Items append from storage cu:block container.remove_slot.input[]

data remove storage cu:block container.remove_slot.input
