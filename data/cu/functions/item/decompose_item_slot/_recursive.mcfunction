data modify storage galaxy:temp +GUI.decompose_item_slot.result append from storage galaxy:temp +GUI.decompose_item_slot.item[0].Slot
data remove storage galaxy:temp +GUI.decompose_item_slot.item[0]
execute if data storage galaxy:temp +GUI.decompose_item_slot.item[0] run function galaxy:gui/decompose_item_slot/_recursive
