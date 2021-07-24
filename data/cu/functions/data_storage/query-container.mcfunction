execute store result score #result cu.dataStorage if entity @e[tag=cu.dataStorage.container]

scoreboard players operation #input cu.string = #result cu.dataStorage
function cu:string/plural
tellraw @s ["Found ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}]

