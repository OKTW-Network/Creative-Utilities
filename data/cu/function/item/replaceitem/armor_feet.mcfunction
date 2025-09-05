function cu:item/replaceitem/_return/store/armor_legs
function cu:item/replaceitem/_return/store/armor_chest
function cu:item/replaceitem/_return/store/armor_head

item replace entity @s armor.feet with minecraft:air
function cu:item/replaceitem/_data_temp_storage
execute in cu:data_temp run loot replace entity @s armor.feet mine 0 1 0 minecraft:air[custom_data={"cu:dummy":"shulker_box_contents"}]

function cu:item/replaceitem/_return/armor_legs
function cu:item/replaceitem/_return/armor_chest
function cu:item/replaceitem/_return/armor_head

function cu:item/replaceitem/_stopsound

data remove storage cu:item replaceitem.input
