data modify storage cu:value object.merge.subject[0] merge from storage cu:value object.merge.data
data modify storage cu:value object.merge.result append from storage cu:value object.merge.subject[0]
data remove storage cu:value object.merge.subject[0]
execute if data storage cu:value object.merge.subject[0] run function cu:value/object/merge/_recursive
