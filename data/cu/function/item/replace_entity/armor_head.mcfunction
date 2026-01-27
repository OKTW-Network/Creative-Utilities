scoreboard players reset #item.replace_entity.armor_head.Result cu-io

execute store result score #item.replace_entity.chunk_load_condition cu-internal run function cu:item/replace_entity/_func/chunk_load_condition
execute if score #item.replace_entity.chunk_load_condition cu-internal matches 0 run return run function cu:item/replace_entity/_return_fail
execute if score #item.replace_entity.chunk_load_condition cu-internal matches 1 store result score #item.replace_entity.armor_head.Result cu-io if function cu:item/replace_entity/_func/setup_container_block in cu:simulation run item replace entity @s armor.head from block 0 1 0 container.0
execute if score #item.replace_entity.chunk_load_condition cu-internal matches 2 store result score #item.replace_entity.armor_head.Result cu-io if function cu:item/replace_entity/_func/setup_item_content_entity run item replace entity @s armor.head from entity @e[type=minecraft:item_display,distance=0..,limit=1,tag=cu-dummy.item.replace_entity.item_content] contents
execute if score #item.replace_entity.chunk_load_condition cu-internal matches 2 run function cu:item/replace_entity/_func/kill_item_content_entity

function cu:item/replace_entity/_reset_function

return run execute unless score #item.replace_entity.armor_head.Result cu-io matches 0 run scoreboard players get #item.replace_entity.armor_head.Result cu-io