data modify storage cu:block container.remove_slot.input set from storage cu:block container.pop_item.input
function cu:block/container/remove_slot
data modify storage cu:block drop_item.input set from storage cu:block container.pop_item.input
