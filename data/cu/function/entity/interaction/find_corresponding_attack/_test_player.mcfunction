data modify storage cu:io data.different.Input.1 set from storage cu:entity interaction.find_corresponding_attack.input
data modify storage cu:io data.different.Input.2 set from entity @s attack.player
function cu:data/different/main
execute if score #data.different.Result cu-io matches 0 run tag @s add cu._tag.entity.interaction.find_corresponding_attack.elect
