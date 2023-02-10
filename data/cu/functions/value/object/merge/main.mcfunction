data remove storage cu:value object.merge.result
execute if data storage cu:value object.merge.subject[0] if data storage cu:value object.merge.data run function cu:value/object/merge/_recursive

data remove storage cu:value object.merge.subject
data remove storage cu:value object.merge.data
