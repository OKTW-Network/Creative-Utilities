data modify storage cu:value object.match.source set from storage cu:value object.match_targets.source
data modify storage cu:value object.match.input set from storage cu:value object.match_targets.input[0]
function cu:value/object/match
scoreboard players operation #value.object.match_targets.result cu = #value.object.match.result cu
data remove storage cu:value object.match_targets.input[0]
scoreboard players set #value.object.match_targets._keepRecursive cu 0
execute if score #value.object.match_targets.method cu matches 0 if score #value.object.match_targets.result cu matches 1 run scoreboard players set #value.object.match_targets._keepRecursive cu 1
execute if score #value.object.match_targets.method cu matches 1 if score #value.object.match_targets.result cu matches 0 run scoreboard players set #value.object.match_targets._keepRecursive cu 1
execute if score #value.object.match_targets._keepRecursive cu matches 1 if data storage cu:value object.match_targets.input[0] run function cu:value/object/match_targets/_recursive-test_match
