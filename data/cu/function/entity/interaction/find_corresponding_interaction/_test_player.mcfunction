data modify storage cu:value different.input1 set from storage cu:entity interaction.find_corresponding_interaction.input
data modify storage cu:value different.input2 set from entity @s interaction.player
function cu:value/different
execute if score #value.different.result cu matches 0 run tag @s add cu._tag.entity.interaction.find_corresponding_interaction.elect
