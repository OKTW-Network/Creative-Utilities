data remove storage cu:block container.get_slot_item.result
data modify storage cu:item simulate_container.input set value [{operation:"set_slot_dummy",value:[]},{operation:"invert_template"},{operation:"transform",value:{method:"append",shift:2,operation:"remove_slot"}},{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from storage cu:block container.get_slot_item.input
data remove storage cu:block container.get_slot_item.input
data modify storage cu:item simulate_container.input[3].value set from block ~ ~ ~ Items
function cu:item/simulate_container/main
data modify storage cu:block container.get_slot_item.result set from storage cu:item simulate_container.result[0]
