scoreboard players reset #item.replace.off_hand.Result cu-io

execute store result score #item.replace.chunk_load_condition cu-internal run function cu:item/replace/_func/chunk_load_condition
execute if score #item.replace.chunk_load_condition cu-internal matches 0 run return run function cu:item/replace/_return_fail
execute if score #item.replace.chunk_load_condition cu-internal matches 1 store result score #item.replace.off_hand.Result cu-io if function cu:item/replace/_func/setup_container_block at @e[type=minecraft:marker,limit=1,tag=cu-Marker.simulation.container_block] run item replace entity @s weapon.offhand from block ~ ~ ~ container.0
execute if score #item.replace.chunk_load_condition cu-internal matches 2 store result score #item.replace.off_hand.Result cu-io if function cu:item/replace/_func/setup_item_content_entity run item replace entity @s weapon.offhand from entity @e[type=minecraft:item_display,distance=0..,limit=1,tag=cu-dummy.item.replace.item_content] contents
execute if score #item.replace.chunk_load_condition cu-internal matches 2 run function cu:item/replace/_func/kill_item_content_entity

function cu:item/replace/_reset_function

return run execute unless score #item.replace.off_hand.Result cu-io matches 0 run scoreboard players get #item.replace.off_hand.Result cu-io