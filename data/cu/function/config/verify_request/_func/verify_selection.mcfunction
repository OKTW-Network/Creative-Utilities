execute store result score #1 temp if data storage cu:io config.verify_request.Input.request[]
execute store result score #2 temp run data get storage cu:io config.verify_request.Input.specification.select_min
execute if score #1 temp < #2 temp run return run data modify storage cu:internal config.verify_request.fail_reason set value {"type":"translatable","translate":"cu_config_verify_request.fail_reason.selected_too_few",fallback:"Selected too few."}
execute store result score #3 temp run data get storage cu:io config.verify_request.Input.specification.select_max
execute if score #1 temp > #3 temp run return run data modify storage cu:internal config.verify_request.fail_reason set value {"type":"translatable","translate":"cu_config_verify_request.fail_reason.selected_too_many",fallback:"Selected too many."}

data modify storage cu:io data.list.easy_deduplicate.Input set from storage cu:io config.verify_request.Input.request
function cu:data/list/easy_deduplicate/main
data modify storage cu:io data.different.Input.1 set from storage cu:io config.verify_request.Input.request
data modify storage cu:io data.different.Input.2 set from storage cu:io data.list.easy_deduplicate.Result
execute if function cu:data/different/main run return run data modify storage cu:internal config.verify_request.fail_reason set value {"type":"translatable","translate":"cu_config_verify_request.fail_reason.selected_duplicates",fallback:"Selected duplicates."}

data modify storage cu:io data.digit.bulk_limit.Input set from storage cu:io config.verify_request.Input.request
scoreboard players set #data.digit.bulk_limit.Option.min cu-io 0
execute store result score #data.digit.bulk_limit.Option.max cu-io if data storage cu:io config.verify_request.Input.specification.value[]
scoreboard players set #data.digit.bulk_limit.Option.exclude_max cu-io 1
scoreboard players set #data.digit.bulk_limit.Option.filter cu-io 1
function cu:data/digit/bulk_limit/main
data modify storage cu:io data.different.Input.1 set from storage cu:io config.verify_request.Input.request
data modify storage cu:io data.different.Input.2 set from storage cu:io data.digit.bulk_limit.Result
execute if function cu:data/different/main run return run data modify storage cu:internal config.verify_request.fail_reason set value {"type":"translatable","translate":"cu_config_verify_request.fail_reason.selected_out_of_range",fallback:"Selected out of range."}