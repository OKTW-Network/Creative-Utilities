execute store result score #data_storage.delete_all_container._containerCount cu run kill @e[tag=cu.data_storage.container]

scoreboard players operation #string.plural.input cu = #data_storage.delete_all_container._containerCount cu
function cu:value/string/plural
tag @s add cu._tag.ThisEntity
tellraw @s ["Deleted ",{"type":"score","score":{"name":"#data_storage.delete_all_container._containerCount","objective":"cu"}}," data container",{"type":"nbt","source":"storage","nbt":"string.plural.result","storage":"cu:value"}]
tellraw @a[tag=!cu._tag.ThisEntity,tag=cu._tag.listenDebugMessage] [{"type":"selector","selector":"@s"}," >>> Deleted ",{"type":"score","score":{"name":"#data_storage.delete_all_container._containerCount","objective":"cu"}}," data container",{"type":"nbt","source":"storage","nbt":"string.plural.result","storage":"cu:value"}]
tag @s remove cu._tag.ThisEntity
