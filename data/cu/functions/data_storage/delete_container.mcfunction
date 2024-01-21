data modify storage cu:entity find_uuid.input append from storage cu:data_storage delete_container.input
data remove storage cu:data_storage delete_container.input
execute at @e[tag=cu.data_storage.base] run function cu:entity/find_uuid/main
kill @e[tag=cu._tag.entity.find_uuid.elect]

tag @s add cu._tag.ThisEntity
tellraw @s ["Deleted data container ",{"type":"nbt","source":"storage","nbt":"delete_container.input","storage":"cu:data_storage"}]
tellraw @a[tag=!self,tag=cu._tag.listenDebugMessage] [{"type":"selector","selector":"@s"}," >>> Deleted data container ",{"type":"nbt","source":"storage","nbt":"delete_container.input","storage":"cu:data_storage"}]
tag @s remove cu._tag.ThisEntity
