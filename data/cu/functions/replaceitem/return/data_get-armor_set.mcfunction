data remove storage cu:replaceitem return.armorFeet
data modify storage cu:get item set value []
function cu:get/armor_feet
execute if data storage cu:get item[0] run data modify storage cu:replaceitem return.armorFeet set from storage cu:get item[0]

data remove storage cu:replaceitem return.armorLegs
data modify storage cu:get item set value []
function cu:get/armor_legs
execute if data storage cu:get item[0] run data modify storage cu:replaceitem return.armorLegs set from storage cu:get item[0]

data remove storage cu:replaceitem return.armorChest
data modify storage cu:get item set value []
function cu:get/armor_chest
execute if data storage cu:get item[0] run data modify storage cu:replaceitem return.armorChest set from storage cu:get item[0]

data remove storage cu:replaceitem return.armorHead
data modify storage cu:get item set value []
function cu:get/armor_head
execute if data storage cu:get item[0] run data modify storage cu:replaceitem return.armorHead set from storage cu:get item[0]
