scoreboard players reset #item.replace.player_cursor.Result cu-io
execute if entity @s[type=!minecraft:player] run function cu:item/replace/_return_fail

execute store result score #item.replace.chunk_load_condition cu-internal run function cu:item/replace/_func/chunk_load_condition
execute if score #item.replace.chunk_load_condition cu-internal matches 0 run return run function cu:item/replace/_return_fail
execute if score #item.replace.chunk_load_condition cu-internal matches 1 store result score #item.replace.player_cursor.Result cu-io if function cu:item/replace/_func/setup_container_block in cu:simulation run item replace entity @s player.cursor from block 0 1 0 container.0
execute if score #item.replace.chunk_load_condition cu-internal matches 2 store result score #item.replace.player_cursor.Result cu-io if function cu:item/replace/_func/setup_item_content_entity run item replace entity @s player.cursor from entity @e[type=minecraft:item_display,distance=0..,limit=1,tag=cu-dummy.item.replace.item_content] contents
execute if score #item.replace.chunk_load_condition cu-internal matches 2 run function cu:item/replace/_func/kill_item_content_entity

function cu:item/replace/_reset_function

return run execute unless score #item.replace.player_cursor.Result cu-io matches 0 run scoreboard players get #item.replace.player_cursor.Result cu-io