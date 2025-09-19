item replace entity @s contents with minecraft:player_head 1
item modify entity @s contents {function:"minecraft:fill_player_head",entity:this}
data modify storage cu:io entity.get_player_head.Result set from entity @s item
kill @s
