data remove storage cu:value object.find_match.result
execute unless score #value.object.find_match.method cu matches -2147483648..2147483647 run scoreboard players set #value.object.find_match.method cu 0
scoreboard players set #value.object.find_match._successCount cu 0
execute if data storage cu:value object.find_match.source[0] run function cu:value/object/find_match/_recursive-test_match

data remove storage cu:value object.find_match.source
data remove storage cu:value object.find_match.input
scoreboard players reset #value.object.find_match.method cu
scoreboard players reset #value.object.find_match._keepRecursive cu
scoreboard players reset #value.object.find_match._successCount cu
