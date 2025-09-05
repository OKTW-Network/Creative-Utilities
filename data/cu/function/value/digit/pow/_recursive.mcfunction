scoreboard players operation #value.digit.pow.result cu *= #value.digit.pow.base cu
scoreboard players remove #value.digit.pow._recursive_times cu 1
execute if score #value.digit.pow._recursive_times cu matches 1.. run function cu:value/digit/pow/_recursive
