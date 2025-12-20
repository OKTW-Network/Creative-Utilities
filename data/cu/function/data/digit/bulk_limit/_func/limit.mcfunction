scoreboard players set #data.digit.bulk_limit.filter_condition cu-internal 0
execute store result score #data.digit.bulk_limit.value cu-internal run data get storage cu:io data.digit.bulk_limit.Input[0]
data remove storage cu:io data.digit.bulk_limit.Input[0]
execute if score #data.digit.bulk_limit.value cu-internal < #data.digit.bulk_limit.Option.min cu-io run function cu:data/digit/bulk_limit/_func/lesser
execute if score #data.digit.bulk_limit.value cu-internal > #data.digit.bulk_limit.Option.max cu-io run function cu:data/digit/bulk_limit/_func/greater
function cu:data/digit/bulk_limit/_func/result

execute if data storage cu:io data.digit.bulk_limit.Input[0] run function cu:data/digit/bulk_limit/_func/limit