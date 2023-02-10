data remove storage cu:item replaceitem._return.armorHead
data modify storage cu:get item set value []
function cu:get/armor_head
execute if data storage cu:get item[0] run data modify storage cu:item replaceitem._return.armorHead set from storage cu:get item[0]
