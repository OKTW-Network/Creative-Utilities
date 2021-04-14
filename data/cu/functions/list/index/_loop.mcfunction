scoreboard players operation #length-1 listIndex = #length listIndex
scoreboard players remove #length-1 listIndex 1

execute if score #index listIndex matches 0 run data modify storage cu:list index.result set from storage cu:list index.input[0]
execute if score #index listIndex = #length-1 listIndex run data modify storage cu:list index.result set from storage cu:list index.input[-1]

data remove storage cu:list index.input[0]
data remove storage cu:list index.input[-1]
scoreboard players remove #index listIndex 1
scoreboard players remove #length listIndex 2

execute unless data storage cu:list index.result if data storage cu:list index.input[0] run function cu:list/index/_loop
