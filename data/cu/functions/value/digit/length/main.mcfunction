scoreboard players set #value.digit.length.result cu 0
execute if score #value.digit.length.input cu matches 0 run scoreboard players add #value.digit.length.result cu 1
execute if score #value.digit.length.input cu matches ..-1 unless score #value.digit.length.ignoreNegativeMark cu matches 1 run scoreboard players add #value.digit.length.result cu 1
execute if score #value.digit.length.input cu matches ..-1 run scoreboard players operation #value.digit.length.input cu *= #-1 num

execute if score #value.digit.length.input cu matches 1.. run function cu:value/digit/length/_recursive

scoreboard players reset #value.digit.length.input cu
