data modify storage cu:io data.different.Input.1 set from entity @s attack.player
data modify storage cu:io data.different.Input.2 set from storage cu:io entity.target.filter.interaction_attack.Input
function cu:data/different/main
execute if score #data.different.Result cu-io matches 0 run tag @s add cu-internal.entity.target.filter.interaction_attack.1
