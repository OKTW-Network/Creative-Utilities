# Reminder
#  The "attachable" means can be attached by blocks that have a "face" block state property.
data remove storage cu:io block.tests_attachable_face.Result

function cu:dimension/simulation/block_testing/reset_testing_area
execute in cu:simulation positioned 2 3 13 run function cu:block/tests_attachable_face/_func/setup_buttons
clone ~ ~ ~ ~ ~ ~ to cu:simulation 2 3 13 replace
data modify storage cu:io block.tests_attachable_face.Result set value {top:false,bottom:false,south:false,north:false,east:false,west:false}
execute in cu:simulation positioned 2 3 13 run function cu:block/tests_attachable_face/_func/tests_button_existence
function cu:dimension/simulation/block_testing/kill_entities

return run execute if data storage cu:io block.tests_attachable_face.Result
