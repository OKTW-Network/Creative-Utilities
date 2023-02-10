execute store result score #dataStorage.result cu if entity @e[tag=cu.dataStorage.base]

scoreboard players operation #string.plural.input cu = #dataStorage.result cu
function cu:value/string/plural
tellraw @s ["Found ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," database",{"nbt":"string.plural.result","storage":"cu:value","interpret":false}]
