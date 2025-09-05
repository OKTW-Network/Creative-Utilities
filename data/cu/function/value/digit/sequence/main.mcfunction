data modify storage cu:value digit.sequence.result set value []
execute unless score #value.digit.sequence.method cu matches 0..2 run scoreboard players set #value.digit.sequence.method cu 0
execute unless score #value.digit.sequence.origin cu matches -2147483648..2147483647 run scoreboard players set #value.digit.sequence.origin cu 0
execute unless score #value.digit.sequence.value cu matches -2147483648..2147483647 run scoreboard players set #value.digit.sequence.value cu 0
execute unless score #value.digit.sequence.count cu matches -2147483648..2147483647 run scoreboard players set #value.digit.sequence.count cu 0
execute store result storage cu:value digit.sequence.result[] int 1 run scoreboard players operation #value.digit.sequence._lastValue cu = #value.digit.sequence.origin cu

execute if score #value.digit.sequence.count cu matches 2.. run function cu:value/digit/sequence/_recursive-append
execute if score #value.digit.sequence.count cu matches ..-2 run function cu:value/digit/sequence/_recursive-prepend

scoreboard players reset #value.digit.sequence.method cu
scoreboard players reset #value.digit.sequence.origin cu
scoreboard players reset #value.digit.sequence.value cu
scoreboard players reset #value.digit.sequence.count cu
scoreboard players reset #value.digit.sequence._lastValue cu
