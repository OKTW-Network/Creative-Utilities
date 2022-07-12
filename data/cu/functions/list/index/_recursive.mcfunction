scoreboard players operation #list.length-1 cu = #list.length cu
scoreboard players remove #list.length-1 cu 1

execute if score #list.index cu matches 0 run data modify storage cu:list index.result set from storage cu:list index.input[0]
execute if score #list.index cu = #list.length-1 cu run data modify storage cu:list index.result set from storage cu:list index.input[-1]

data remove storage cu:list index.input[0]
data remove storage cu:list index.input[-1]
scoreboard players remove #list.index cu 1
scoreboard players remove #list.length cu 2

execute unless data storage cu:list index.result if data storage cu:list index.input[0] run function cu:list/index/_recursive
