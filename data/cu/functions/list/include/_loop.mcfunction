data modify storage cu:compare input1 set from storage cu:list include.inputTarget
data modify storage cu:compare input2 set from storage cu:list include.inputSource[0]
function cu:compare/different
execute if score #result compare matches 0 run scoreboard players set #result listInclude 1

data remove storage cu:list include.inputSource[0]

execute unless score #result listInclude matches 1 if data storage cu:list include.inputSource[0] run function cu:list/include/_loop
