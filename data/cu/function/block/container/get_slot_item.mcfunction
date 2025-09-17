data remove storage cu:block container.get_slot_item.result
data modify storage cu:io item.simulate_container.Input set value [{operation:"fill_dummy"},{operation:"remove_slot",value:[]},{operation:"transform",value:{method:"append",shift:1,operation:"remove_slot"}},{operation:"set",value:[]}]
data modify storage cu:io item.simulate_container.Input[1].value set from storage cu:block container.get_slot_item.input
data remove storage cu:block container.get_slot_item.input
data modify storage cu:io item.simulate_container.Input[3].value set from block ~ ~ ~ Items
function cu:item/simulate_container/main
data modify storage cu:block container.get_slot_item.result set from storage cu:io item.simulate_container.Result[0]
