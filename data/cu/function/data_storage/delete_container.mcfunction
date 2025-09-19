data modify storage cu:io entity.target.select.uuid_list.Input append from storage cu:data_storage delete_container.input
data remove storage cu:data_storage delete_container.input
function cu:entity/target/reset_tag
function cu:entity/target/select/uuid_list/main
kill @e[tag=cu-io.entity.target]

tag @s add cu._tag.ThisEntity
tellraw @s ["Deleted data container ",{"type":"nbt","source":"storage","nbt":"delete_container.input","storage":"cu:data_storage"}]
tellraw @a[tag=!self,tag=cu._tag.listenDebugMessage] [{"type":"selector","selector":"@s"}," >>> Deleted data container ",{"type":"nbt","source":"storage","nbt":"delete_container.input","storage":"cu:data_storage"}]
tag @s remove cu._tag.ThisEntity
