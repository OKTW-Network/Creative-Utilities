data remove storage cu:io data.digit.bulk_limit.Result
execute unless score #data.digit.bulk_limit.Option.min cu-io matches -2147483648..2147483647 run scoreboard players set #data.digit.bulk_limit.Option.min cu-io -2147483648
execute unless score #data.digit.bulk_limit.Option.max cu-io matches -2147483648..2147483647 run scoreboard players set #data.digit.bulk_limit.Option.max cu-io 2147483647
execute unless score #data.digit.bulk_limit.Option.exclude_min cu-io matches 0..1 run scoreboard players set #data.digit.bulk_limit.Option.exclude_min cu-io 0
execute unless score #data.digit.bulk_limit.Option.exclude_max cu-io matches 0..1 run scoreboard players set #data.digit.bulk_limit.Option.exclude_max cu-io 0
execute if score #data.digit.bulk_limit.Option.exclude_min cu-io matches 1 unless score #data.digit.bulk_limit.Option.min cu-io matches 2147483647 run scoreboard players add #data.digit.bulk_limit.Option.min cu-io 1
execute if score #data.digit.bulk_limit.Option.exclude_max cu-io matches 1 unless score #data.digit.bulk_limit.Option.min cu-io matches -2147483648 run scoreboard players remove #data.digit.bulk_limit.Option.max cu-io 1
execute if score #data.digit.bulk_limit.Option.max cu-io < #data.digit.bulk_limit.Option.min cu-io run scoreboard players operation #data.digit.bulk_limit.Option.max cu-io >< #data.digit.bulk_limit.Option.min cu-io
execute unless score #data.digit.bulk_limit.Option.filter cu-io matches 0..2 run scoreboard players set #data.digit.bulk_limit.Option.filter cu-io 0

execute if data storage cu:io data.digit.bulk_limit.Input[0] run function cu:data/digit/bulk_limit/_func/limit

data remove storage cu:io data.digit.bulk_limit.Input
scoreboard players reset #data.digit.bulk_limit.Option.min cu-io
scoreboard players reset #data.digit.bulk_limit.Option.max cu-io
scoreboard players reset #data.digit.bulk_limit.value cu-internal
scoreboard players reset #data.digit.bulk_limit.filter_condition cu-internal

return run execute if data storage cu:io data.digit.bulk_limit.Result