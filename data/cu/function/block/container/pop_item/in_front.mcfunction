execute if data storage cu:block container.pop_item.input[0] run function cu:block/container/pop_item/_remove_slot_and_set_input
execute if data storage cu:block container.pop_item.input[0] run function cu:block/drop_item/in_front

data remove storage cu:block container.pop_item.input
