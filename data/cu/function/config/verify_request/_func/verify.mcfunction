data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io config.verify_request.Input.specification.type
execute if data storage cu:internal {dummy:'number_range'} run return run function cu:config/verify_request/_func/verify_number_range
execute if data storage cu:internal {dummy:'selection'} run return run function cu:config/verify_request/_func/verify_selection
return run data modify storage cu:internal config.verify_request.fail_reason set value {"type":"translatable","translate":"cu_config_verify_request.fail_reason.no_matching_specification_type",fallback:"Can't verify for this specification type."}