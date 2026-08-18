execute store result score #1 cu-internal run data get storage cu:io config.verify_request.Input.request
execute store result score #2 cu-internal run data get storage cu:io config.verify_request.Input.specification.value[0]
execute if score #1 cu-internal < #2 cu-internal run return run data modify storage cu:internal config.verify_request.fail_reason set value {"type":"translatable","translate":"cu_config_verify_request.fail_reason.value_too_small",fallback:"Value too small."}
execute store result score #3 cu-internal run data get storage cu:io config.verify_request.Input.specification.value[1]
execute if score #1 cu-internal > #3 cu-internal run return run data modify storage cu:internal config.verify_request.fail_reason set value {"type":"translatable","translate":"cu_config_verify_request.fail_reason.value_too_big",fallback:"Value too big."}
