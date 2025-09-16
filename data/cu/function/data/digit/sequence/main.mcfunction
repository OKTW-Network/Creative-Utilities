scoreboard players set #data.digit.sequence.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid inputs or error.
#  []     : The result.
data remove storage cu:io data.digit.sequence.Result
execute unless score #data.digit.sequence.Input.base cu-io matches -2147483648..2147483647 run return run function cu:data/digit/sequence/_return_fail
# Option.operation
#  0 : Addition
#  1 : Subtraction
#  2 : Multiplication
#  3 : Division
#  4 : Base addition
#  5 : Base multiplication
execute unless score #data.digit.sequence.Option.operation cu-io matches 0..5 run scoreboard players set #data.digit.sequence.Option.operation cu-io 0
execute if score #data.digit.sequence.Option.operation cu-io matches 0..3 unless score #data.digit.sequence.Input.value cu-io matches -2147483648..2147483647 run return run function cu:data/digit/sequence/_return_fail
# Option.count
#  1..2147483647   : Specify the quantity excluding the base. Extend tail.
#  -2147483648..-1 : Specify the quantity excluding the base. Extend head.
execute unless score #data.digit.sequence.Option.count cu-io matches -2147483648..-1 unless score #data.digit.sequence.Option.count cu-io matches 1..2147483647 run scoreboard players set #data.digit.sequence.Option.count cu-io 1
# Option.exclude_base
#  0 : Do not apply this option.
#  1 : Excludes the base.
execute unless score #data.digit.sequence.Option.exclude_base cu-io matches 0..1 run scoreboard players set #data.digit.sequence.Option.exclude_base cu-io 0

scoreboard players set #data.digit.sequence.FUNCTION_STAGE cu-io 1
scoreboard players operation #data.digit.sequence.last_value cu-internal = #data.digit.sequence.Input.base cu-io
execute if score #data.digit.sequence.Option.include_base cu-io matches 1 run function cu:data/digit/sequence/_func/include_base
scoreboard players operation #data.digit.sequence.recur_countdown cu-internal = #data.digit.sequence.Option.count cu-io
scoreboard players set #1 temp -1
execute if score #data.digit.sequence.recur_countdown cu-internal matches ..-1 run scoreboard players operation #data.digit.sequence.recur_countdown cu-internal = #1 temp
function cu:data/digit/sequence/_func/calculate

scoreboard players set #data.digit.sequence.FUNCTION_STAGE cu-io -1
function cu:data/digit/sequence/_reset_function

return run execute if data storage cu:io data.digit.sequence.Result
