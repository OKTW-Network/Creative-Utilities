function cu:value/digit/sequence/_calculate
data modify storage cu:value digit.sequence.result append value 0
execute store result storage cu:value digit.sequence.result[-1] int 1 run scoreboard players get #value.digit.sequence._lastValue cu
scoreboard players remove #value.digit.sequence.count cu 1
execute if score #value.digit.sequence.count cu matches 2.. run function cu:value/digit/sequence/_recursive-append
