data remove storage cu:item replaceitem._return.armorLegs
data modify storage cu:get item set value []
function cu:get/armor_legs
execute if data storage cu:get item[0] run data modify storage cu:item replaceitem._return.armorLegs set from storage cu:get item[0]