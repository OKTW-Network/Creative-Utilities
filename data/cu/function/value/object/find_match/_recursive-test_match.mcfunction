data modify storage cu:value object.match.source set from storage cu:value object.find_match.source[0]
data modify storage cu:value object.match.input set from storage cu:value object.find_match.input
function cu:value/object/match
execute if score #value.object.match.result cu matches 1 run data modify storage cu:value object.find_match.result append from storage cu:value object.find_match.source[0]
scoreboard players operation #value.object.find_match._successCount cu += #value.object.match.result cu
data remove storage cu:value object.find_match.source[0]
scoreboard players set #value.object.find_match._keepRecursive cu 0
execute if score #value.object.find_match.method cu matches 0 run scoreboard players set #value.object.find_match._keepRecursive cu 1
execute if score #value.object.find_match.method cu matches 1.. unless score #value.object.find_match.method cu = #value.object.find_match._successCount cu run scoreboard players set #value.object.find_match._keepRecursive cu 1
execute if score #value.object.find_match._keepRecursive cu matches 1 if data storage cu:value object.find_match.source[0] run function cu:value/object/find_match/_recursive-test_match
