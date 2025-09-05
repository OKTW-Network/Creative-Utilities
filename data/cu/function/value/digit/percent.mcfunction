scoreboard players reset #value.digit.percent.result cu
execute unless score #value.digit.percent.base cu matches -2147483648..2147483647 run scoreboard players set #value.digit.percent.base cu 0
execute unless score #value.digit.percent.modifier cu matches -2147483648..2147483647 run scoreboard players set #value.digit.percent.modifier cu 100
execute unless score #value.digit.percent.round cu matches -2147483648..2147483647 run scoreboard players set #value.digit.percent.round cu 0

execute store result score #value.digit.percent._round_check cu run scoreboard players operation #value.digit.percent.base cu *= #value.digit.percent.modifier cu
execute store result score #value.digit.percent.result cu run scoreboard players operation #value.digit.percent.base cu /= #100 num
execute if score #value.digit.percent.round cu matches 1 run scoreboard players operation #value.digit.percent._round_check cu %= #100 num
execute if score #value.digit.percent.round cu matches 1 if score #value.digit.percent._round_check cu matches 50.. store result score #value.digit.percent.result cu run scoreboard players add #value.digit.percent.base cu 1

scoreboard players reset #value.digit.percent.base cu
scoreboard players reset #value.digit.percent.modifier cu
scoreboard players reset #value.digit.percent.round cu
scoreboard players reset #value.digit.percent._round_check cu
