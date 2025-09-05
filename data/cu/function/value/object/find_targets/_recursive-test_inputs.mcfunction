data modify storage cu:value object.find_match.source set from storage cu:value object.find_targets.source
data modify storage cu:value object.find_match.input set from storage cu:value object.find_targets.input[0]
function cu:value/object/find_match/main
data modify storage cu:value object.find_targets.result append from storage cu:value object.find_match.result[]
data remove storage cu:value object.find_targets.input[0]
execute if data storage cu:value object.find_targets.input[0] run function cu:value/object/find_targets/_recursive-test_inputs
