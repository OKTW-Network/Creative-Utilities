data remove storage cu:entity get.player_head.result

execute in cu:data_temp run data modify block 0 1 0 Items set value [{Slot:0b,id:"minecraft:player_head",count:1}]
execute in cu:data_temp run item modify block 0 1 0 container.0 cu:fill_player_head
execute in cu:data_temp run data modify storage cu:entity get.player_head.result set from block 0 1 0 Items[{Slot:0b}]

data remove storage cu:entity get.player_head.result.Slot
data modify storage cu:get item append from storage cu:entity get.player_head.result
