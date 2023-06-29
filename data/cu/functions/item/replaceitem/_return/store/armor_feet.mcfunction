data remove storage cu:item replaceitem._return.armorFeet
data modify storage cu:get item set value []
function cu:entity/get/feet_armor
execute if data storage cu:get item[0] run data modify storage cu:item replaceitem._return.armorFeet set from storage cu:get item[0]
