data modify storage cu:list include.inputTarget set from entity @s UUID
data modify storage cu:list include.inputSource set from storage cu:temp +hitbox.filter.sourcePastVictim
function cu:list/include/main
execute unless score #list.result cu matches 0 run tag @s remove cu._tag.hitboxElect
