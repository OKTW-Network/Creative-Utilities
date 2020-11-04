execute if score #input lengthDigit matches ..-1 unless score #ignoreNegative lengthDigit matches 1 run scoreboard players add #temp lengthDigit 1
execute if score #input lengthDigit matches ..-1 run scoreboard players operation #input lengthDigit *= #-1 num

scoreboard players operation #input lengthDigit /= #10 num
scoreboard players add #temp lengthDigit 1

execute unless score #input lengthDigit matches 1.. run scoreboard players operation #result lengthDigit = #temp lengthDigit
execute unless score #input lengthDigit matches 1.. store result score #ignoreNegative lengthDigit run scoreboard players set #temp lengthDigit 0
execute if score #input lengthDigit matches 1.. run function cu:length/digit
