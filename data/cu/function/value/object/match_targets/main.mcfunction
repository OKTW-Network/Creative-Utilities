scoreboard players set #value.object.match_targets.result cu 0
execute unless score #value.object.match_targets.method cu matches 0..1 run scoreboard players set #value.object.match_targets.method cu 0
execute if data storage cu:value object.match_targets.input[0] run function cu:value/object/match_targets/_recursive-test_match

data remove storage cu:value object.match_targets.source
data remove storage cu:value object.match_targets.input
scoreboard players reset #value.object.match_targets.method cu
scoreboard players reset #value.object.match_targets._keepRecursive cu
