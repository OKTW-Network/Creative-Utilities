execute store result score #dataStorage.result cu if entity @e[tag=cu.dataStorage.container]

scoreboard players operation #string.plural.input cu = #dataStorage.result cu
function cu:value/string/plural
tellraw @s ["Found ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"string.plural.result","storage":"cu:value","interpret":false}]
