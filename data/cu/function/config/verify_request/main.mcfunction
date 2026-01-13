scoreboard players set #config.verify_request.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  {}     : The result.
#            {successful:0..1b}             : The verification result.
#                                              0b : false
#                                              1b : true
#            {fail_reason:<text component>} : The description of the first found error.
data remove storage cu:io config.verify_request.Result
execute unless data storage cu:io config.verify_request.Input.specification{} run return run function cu:config/verify_request/_return_fail
execute unless data storage cu:io config.verify_request.Input.request run return run function cu:config/verify_request/_return_fail

scoreboard players set #config.verify_request.FUNCTION_STAGE cu-io 1
data remove storage cu:internal config.verify_request.fail_reason
function cu:config/verify_request/_func/verify
data modify storage cu:io config.verify_request.Result set value {successful:0b,fail_reason:''}
execute unless data storage cu:internal config.verify_request.fail_reason run data modify storage cu:io config.verify_request.Result.successful set value 1b
data modify storage cu:io config.verify_request.Result.fail_reason set from storage cu:internal config.verify_request.fail_reason

scoreboard players set #config.verify_request.FUNCTION_STAGE cu-io -1
function cu:config/verify_request/_reset_function

return run execute if data storage cu:io config.verify_request.Result{successful:1b}