# Reminder
#  The "attachable" means can be attached by blocks that have a "face" block state property.
data remove storage cu:io block.tests_attachable_face.Result
execute unless loaded ~ ~ ~ run return fail
execute unless function cu:dimension/simulation/primary/check_loaded run return fail

function cu:dimension/simulation/primary/block_testing/reset_testing_area
execute in cu:simulation positioned 12 4 12 run function cu:block/tests_attachable_face/_func/setup_buttons
clone ~ ~ ~ ~ ~ ~ to cu:simulation 12 4 12 replace
data modify storage cu:io block.tests_attachable_face.Result set value {top:false,bottom:false,south:false,north:false,east:false,west:false}
execute in cu:simulation positioned 12 4 12 run function cu:block/tests_attachable_face/_func/tests_button_existence

function cu:dimension/simulation/primary/block_testing/reset_testing_area

return 1