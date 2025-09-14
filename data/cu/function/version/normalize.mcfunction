data remove storage cu:io version.normalize.Result
scoreboard players reset #version.normalize.Result.version_x cu-io
scoreboard players reset #version.normalize.Result.version_y cu-io
scoreboard players reset #version.normalize.Result.version_z cu-io

function cu:version/_func/normalize_input
scoreboard players operation #version.normalize.Result.version_x cu-io = #version.Input.version_x cu-io
scoreboard players operation #version.normalize.Result.version_y cu-io = #version.Input.version_y cu-io
scoreboard players operation #version.normalize.Result.version_z cu-io = #version.Input.version_z cu-io
data modify storage cu:io version.normalize.Result.version_tag set from storage cu:io version.Input.version_tag

function cu:version/_reset_function

return run execute if data storage cu:io version.normalize.Result
