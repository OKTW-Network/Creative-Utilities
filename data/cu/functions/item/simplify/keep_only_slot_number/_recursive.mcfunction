data modify storage cu:item simplify.keep_only_slot_number.result append from storage cu:item simplify.keep_only_slot_number.items[0].Slot
data remove storage cu:item simplify.keep_only_slot_number.items[0]
execute if data storage cu:item simplify.keep_only_slot_number.items[0] run function cu:item/simplify/keep_only_slot_number/_recursive
