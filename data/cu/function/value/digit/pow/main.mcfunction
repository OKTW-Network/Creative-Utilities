scoreboard players reset #value.digit.pow.result cu
execute unless score #value.digit.pow.base cu matches -2147483648..2147483647 run scoreboard players set #value.digit.pow.base cu 1
execute unless score #value.digit.pow.exponent cu matches -2147483648..2147483647 run scoreboard players set #value.digit.pow.exponent cu 1

execute if score #value.digit.pow.base cu matches 0 run scoreboard players set #value.digit.pow.exponent cu 0
execute unless score #value.digit.pow.base cu matches 0 if score #value.digit.pow.exponent cu matches 0 run scoreboard players set #value.digit.pow.result cu 1
execute unless score #value.digit.pow.base cu matches 0 unless score #value.digit.pow.exponent cu matches 0 run scoreboard players operation #value.digit.pow.result cu = #value.digit.pow.base cu

scoreboard players operation #value.digit.pow._recursive_times cu = #value.digit.pow.exponent cu
execute if score #value.digit.pow._recursive_times cu matches ..-1 run scoreboard players operation #value.digit.pow._recursive_times cu *= #-1 num
scoreboard players remove #value.digit.pow._recursive_times cu 1
execute if score #value.digit.pow.exponent cu matches 0 run scoreboard players set #value.digit.pow._recursive_times cu 0

execute if score #value.digit.pow._recursive_times cu matches 1.. run function cu:value/digit/pow/_recursive

execute if score #value.digit.pow.exponent cu matches ..-1 run function cu:value/digit/pow/_negative_exponent

scoreboard players reset #value.digit.pow.base cu
scoreboard players reset #value.digit.pow.exponent cu
scoreboard players reset #value.digit.pow.precision cu
scoreboard players reset #value.digit.pow._recursive_times cu
