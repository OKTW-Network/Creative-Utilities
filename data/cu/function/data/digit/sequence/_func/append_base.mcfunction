data remove storage cu:internal dummy
execute store result storage cu:internal dummy int 1 run scoreboard players get #data.digit.sequence.Input.base cu-io
data modify storage cu:io data.digit.sequence.Result append from storage cu:internal dummy
