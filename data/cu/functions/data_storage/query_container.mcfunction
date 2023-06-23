execute store result score #data_storage.query_container.result cu if entity @e[tag=cu.data_storage.container]

scoreboard players operation #string.plural.input cu = #data_storage.query_container.result cu
function cu:value/string/plural
tellraw @s ["Found ",{"score":{"name":"#data_storage.query_container.result","objective":"cu"}}," data container",{"nbt":"string.plural.result","storage":"cu:value","interpret":false}]
