execute if score #length.input cu matches ..-1 unless score #length.ignoreNegative cu matches 1 run scoreboard players add #length.temp cu 1
execute if score #length.input cu matches ..-1 run scoreboard players operation #length.input cu *= #-1 num

scoreboard players operation #length.input cu /= #10 num
scoreboard players add #length.temp cu 1

execute unless score #length.input cu matches 1.. run scoreboard players operation #length.result cu = #length.temp cu
execute unless score #length.input cu matches 1.. store result score #length.ignoreNegative cu run scoreboard players set #length.temp cu 0
execute if score #length.input cu matches 1.. run function cu:length/digit
