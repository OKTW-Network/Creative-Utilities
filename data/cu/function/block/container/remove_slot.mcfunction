execute if data storage cu:block container.remove_slot.input[0] run data remove storage cu:block container.remove_slot.input[].tag
execute if data storage cu:block container.remove_slot.input[0] run data modify storage cu:block container.remove_slot.input[] merge value {id:"minecraft:air",Count:0b}
execute if data storage cu:block container.remove_slot.input[0] run data modify block ~ ~ ~ Items append from storage cu:block container.remove_slot.input[]

data remove storage cu:block container.remove_slot.input
