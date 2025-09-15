data modify storage cu:io value.list.contains.Input.target set from entity @s UUID
data modify storage cu:io value.list.contains.Input.data set from storage cu:temp +hitbox.filter.sourcePastVictim
function cu:value/list/contains/main
execute if score #value.list.contains.Result cu-io matches 1 run tag @s remove cu._tag.hitboxElect
