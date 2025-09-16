data modify storage cu:io data.list.contains.Input.target set from entity @s UUID
data modify storage cu:io data.list.contains.Input.data set from storage cu:entity target.filter.uuid_in_list.input
function cu:data/list/contains/main
execute if score #data.list.contains.Result cu-io matches 1 run tag @s remove cu._tag.entity.target.selected
