data modify storage cu:io data.different.Input.1 set from entity @s interaction.player
data modify storage cu:io data.different.Input.2 set from storage cu:io entity.target.select.interaction_interaction.Input
function cu:data/different/main
execute if score #data.different.Result cu-io matches 1 run return 0
tag @s add cu-io.entity.target
scoreboard players add #entity.target.select.interaction_interaction.Result cu-io 1
