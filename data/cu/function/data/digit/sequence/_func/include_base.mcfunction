data remove storage cu:internal dummy
execute store result storage cu:internal dummy int 1 run scoreboard players get #data.digit.sequence.last_value cu-internal
data modify storage cu:io data.digit.sequence.Result append from storage cu:internal dummy
