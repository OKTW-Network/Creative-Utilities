data remove storage cu:item replaceitem._return.offHand
function cu:entity/get/off_hand
data modify storage cu:item replaceitem._return.offHand set from storage cu:entity get.off_hand.result
