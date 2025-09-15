data modify storage cu:io value.different.Input.1 set from storage cu:entity interaction.find_corresponding_interaction.input
data modify storage cu:io value.different.Input.2 set from entity @s interaction.player
function cu:value/different/main
execute if score #value.different.Result cu-io matches 0 run tag @s add cu._tag.entity.interaction.find_corresponding_interaction.elect
