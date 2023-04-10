execute if data storage cu:item give.input{} run function cu:item/give/_resolve_object_input

execute if data storage cu:item give.input[0] run function cu:item/give/_recursive

data remove storage cu:item give.input
data remove storage cu:item give.owner
