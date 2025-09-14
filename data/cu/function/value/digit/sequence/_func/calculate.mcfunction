execute if score #value.digit.sequence.Option.operation cu-io matches 0 run scoreboard players operation #value.digit.sequence.last_value cu-internal += #value.digit.sequence.Input.value cu-io
execute if score #value.digit.sequence.Option.operation cu-io matches 1 run scoreboard players operation #value.digit.sequence.last_value cu-internal -= #value.digit.sequence.Input.value cu-io
execute if score #value.digit.sequence.Option.operation cu-io matches 2 run scoreboard players operation #value.digit.sequence.last_value cu-internal *= #value.digit.sequence.Input.value cu-io
execute if score #value.digit.sequence.Option.operation cu-io matches 3 run scoreboard players operation #value.digit.sequence.last_value cu-internal /= #value.digit.sequence.Input.value cu-io
execute if score #value.digit.sequence.Option.operation cu-io matches 4 run scoreboard players operation #value.digit.sequence.last_value cu-internal += #value.digit.sequence.last_value cu-internal
execute if score #value.digit.sequence.Option.operation cu-io matches 5 run scoreboard players operation #value.digit.sequence.last_value cu-internal *= #value.digit.sequence.last_value cu-internal
data remove storage cu:internal dummy
execute store result storage cu:internal dummy int 1 run scoreboard players get #value.digit.sequence.last_value cu-internal
execute if score #value.digit.sequence.Option.count cu-io matches 1.. run data modify storage cu:io value.digit.sequence.Result append from storage cu:internal dummy
execute if score #value.digit.sequence.Option.count cu-io matches ..-1 run data modify storage cu:io value.digit.sequence.Result prepend from storage cu:internal dummy
scoreboard players remove #value.digit.sequence.recur_count cu-internal 1
execute if score #value.digit.sequence.recur_count cu-internal matches 1.. run function cu:value/digit/sequence/_func/calculate
