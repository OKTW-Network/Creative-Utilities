execute if score #value.digit.sequence.method cu matches 0 run scoreboard players operation #value.digit.sequence._lastValue cu += #value.digit.sequence.value cu
execute if score #value.digit.sequence.method cu matches 1 run scoreboard players operation #value.digit.sequence._lastValue cu *= #value.digit.sequence.value cu
execute if score #value.digit.sequence.method cu matches 2 run scoreboard players operation #value.digit.sequence._lastValue cu += #value.digit.sequence._lastValue cu
