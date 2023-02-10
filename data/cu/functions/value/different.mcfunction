execute store success score #value.different.result cu run data modify storage cu:value different.input1 set from storage cu:value different.input2

execute if score #value.different.result cu matches 0 unless data storage cu:value different.input1 unless data storage cu:value different.input2 run scoreboard players set #value.different.result cu -1

data remove storage cu:value different.input1
data remove storage cu:value different.input2
