scoreboard players operation #value.digit.pow.precision cu > #1 num
scoreboard players operation #value.digit.pow.precision cu < #9 num
execute if score #value.digit.pow.precision cu matches 1 run scoreboard players set #value.digit.pow.precision cu 10
execute if score #value.digit.pow.precision cu matches 2 run scoreboard players set #value.digit.pow.precision cu 100
execute if score #value.digit.pow.precision cu matches 3 run scoreboard players set #value.digit.pow.precision cu 1000
execute if score #value.digit.pow.precision cu matches 4 run scoreboard players set #value.digit.pow.precision cu 10000
execute if score #value.digit.pow.precision cu matches 5 run scoreboard players set #value.digit.pow.precision cu 100000
execute if score #value.digit.pow.precision cu matches 6 run scoreboard players set #value.digit.pow.precision cu 1000000
execute if score #value.digit.pow.precision cu matches 7 run scoreboard players set #value.digit.pow.precision cu 10000000
execute if score #value.digit.pow.precision cu matches 8 run scoreboard players set #value.digit.pow.precision cu 100000000
execute if score #value.digit.pow.precision cu matches 9 run scoreboard players set #value.digit.pow.precision cu 1000000000
execute store result score #value.digit.pow.result cu run scoreboard players operation #value.digit.pow.precision cu /= #value.digit.pow.result cu
