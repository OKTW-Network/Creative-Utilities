data remove storage cu:item replaceitem._return.armorChest
data modify storage cu:get item set value []
function cu:entity/get/chest_armor
execute if data storage cu:get item[0] run data modify storage cu:item replaceitem._return.armorChest set from storage cu:get item[0]
