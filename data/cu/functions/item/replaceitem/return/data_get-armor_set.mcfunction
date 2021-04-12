data remove storage cu:item return.armorFeet
data modify storage cu:get item set value []
function cu:get/armor_feet
execute if data storage cu:get item[0] run data modify storage cu:item return.armorFeet set from storage cu:get item[0]

data remove storage cu:item return.armorLegs
data modify storage cu:get item set value []
function cu:get/armor_legs
execute if data storage cu:get item[0] run data modify storage cu:item return.armorLegs set from storage cu:get item[0]

data remove storage cu:item return.armorChest
data modify storage cu:get item set value []
function cu:get/armor_chest
execute if data storage cu:get item[0] run data modify storage cu:item return.armorChest set from storage cu:get item[0]

data remove storage cu:item return.armorHead
data modify storage cu:get item set value []
function cu:get/armor_head
execute if data storage cu:get item[0] run data modify storage cu:item return.armorHead set from storage cu:get item[0]
