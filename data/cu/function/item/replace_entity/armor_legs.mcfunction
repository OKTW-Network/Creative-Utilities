scoreboard players reset #item.replace_entity.armor_legs.Result cu-io

function cu:item/replace_entity/_func/setup_container
execute in cu:simulation store result score #item.replace_entity.armor_legs.Result cu-io run item replace entity @s armor.legs from block 0 1 0 container.0

function cu:item/replace_entity/_reset_function

return run execute unless score #item.replace_entity.armor_legs.Result cu-io matches 0 run scoreboard players get #item.replace_entity.armor_legs.Result cu-io
