data modify storage cu:value list.include.target set from entity @s UUID
data modify storage cu:value list.include.source set from storage cu:temp +hitbox.filter.sourcePastVictim
function cu:value/list/include/main
execute if score #value.list.include.result cu matches 1 run tag @s remove cu._tag.hitboxElect
