scoreboard players operation #3 cu-internal = #data.digit.average.remainder_accumulator cu-internal
scoreboard players operation #data.digit.average.remainder_accumulator cu-internal += #2 cu-internal
execute if score #data.digit.average.remainder_accumulator cu-internal < #data.digit.average.count cu-internal if score #3 cu-internal < #data.digit.average.remainder_accumulator cu-internal run return 0
scoreboard players operation #data.digit.average.remainder_accumulator cu-internal -= #data.digit.average.count cu-internal
scoreboard players add #data.digit.average.compensation cu-internal 1
