data remove storage cu:item replaceitem._return.armorChest
function cu:entity/get/chest_armor
data modify storage cu:item replaceitem._return.armorChest set from storage cu:entity get.chest_armor.result
