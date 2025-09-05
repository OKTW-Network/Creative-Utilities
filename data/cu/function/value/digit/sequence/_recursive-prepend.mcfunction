function cu:value/digit/sequence/_calculate
data modify storage cu:value digit.sequence.result prepend value 0
execute store result storage cu:value digit.sequence.result[0] int 1 run scoreboard players get #value.digit.sequence._lastValue cu
scoreboard players add #value.digit.sequence.count cu 1
execute if score #value.digit.sequence.count cu matches ..-2 run function cu:value/digit/sequence/_recursive-prepend
