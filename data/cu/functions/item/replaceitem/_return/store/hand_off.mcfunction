data remove storage cu:item replaceitem._return.handOff
data modify storage cu:get item set value []
function cu:entity/get/off_hand
execute if data storage cu:get item[0] run data modify storage cu:item replaceitem._return.handOff set from storage cu:get item[0]
