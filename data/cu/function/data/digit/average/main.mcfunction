scoreboard players reset #data.digit.average.Result cu-io
# Option.method
#  0 : Sum then divide.
#       [1,5] => (1+5)/2 => 6/2 => 3
#       [10,10] => (10+10)/2 => 20/2 => 10
#       [10,10,10] => (10+10+10)/3 => 30/3 => 10
#       [2147483647,2147483647] => (2147483647+2147483647)/2 => -2/2 => -1
#  1 : Divide then sum. Prevent overflow, but lose precision.
#       [1,5] => 1/2+5/2 => 0+2 => 2
#       [10,10] => 10/2+10/2 => 5+5 => 10
#       [10,10,10] => 10/3+10/3+10/3 => 3+3+3 => 9
#       [2147483647,2147483647] => 2147483647/2+2147483647/2 => 1073741823+1073741823 => 2147483646
execute unless score #data.digit.average.Option.method cu-io matches 0..1 run scoreboard players set #data.digit.average.Option.method cu-io 0

execute store result score #data.digit.average.count cu-internal if data storage cu:io data.digit.average.Input[]
execute if score #data.digit.average.count cu-internal matches 1.. run function cu:data/digit/average/_func/average/main

data remove storage cu:io data.digit.average.Input
data remove storage cu:internal data.digit.average.pre_processed
scoreboard players reset #data.digit.average.Option.method cu-io
scoreboard players reset #data.digit.average.count cu-internal

return run execute if score #data.digit.average.Result cu-io matches -2147483648..2147483647 run scoreboard players get #data.digit.average.Result cu-io
