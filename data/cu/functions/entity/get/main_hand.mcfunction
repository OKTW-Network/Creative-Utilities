data remove storage cu:entity get.main_hand.result

execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run item replace block 0 1 0 container.0 from entity @s weapon.mainhand
execute in cu:data_temp run data modify storage cu:entity get.main_hand.result set from block 0 1 0 Items[{Slot:0b}]

data remove storage cu:entity get.main_hand.result.Slot
data modify storage cu:get item append from storage cu:entity get.main_hand.result
