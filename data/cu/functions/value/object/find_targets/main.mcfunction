data remove storage cu:value object.find_targets.result
execute unless score #value.object.find_targets.method cu matches 0..2147483647 run scoreboard players set #value.object.find_targets.method cu 0
execute if data storage cu:value object.find_targets.source[0] run function cu:value/object/find_targets/_recursive-test_inputs

data remove storage cu:value object.find_targets.source
data remove storage cu:value object.find_targets.input
scoreboard players reset #value.object.find_targets.method cu
