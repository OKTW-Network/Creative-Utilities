execute store result score #dataStorage.result cu if entity @e[tag=cu.dataStorage.container]

scoreboard players operation #string.input cu = #dataStorage.result cu
function cu:string/plural
tellraw @s ["Found ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}]

