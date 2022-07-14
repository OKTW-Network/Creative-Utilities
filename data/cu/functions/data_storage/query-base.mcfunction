execute store result score #dataStorage.result cu if entity @e[tag=cu.dataStorage.base]

scoreboard players operation #string.input cu = #dataStorage.result cu
function cu:string/plural
tellraw @s ["Found ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," database",{"nbt":"plural.result","storage":"cu:string","interpret":false}]
