data modify storage cu:io value.list.contains.Input.target set from entity @s UUID
data modify storage cu:io value.list.contains.Input.data set from storage cu:entity target.filter.uuid_in_list.input
function cu:value/list/contains/main
execute if score #value.list.contains.Result cu-io matches 1 run tag @s add cu._tag.entity.target.picked
