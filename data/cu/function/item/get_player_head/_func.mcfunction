item replace block ~ ~ ~ container.0 with minecraft:player_head 1
item modify block ~ ~ ~ container.0 {function:"minecraft:fill_player_head",entity:this}
data modify storage cu:io item.get_player_head.Result set from block ~ ~ ~ Items[0]
data remove storage cu:io item.get_player_head.Result.Slot