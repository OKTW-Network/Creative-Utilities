scoreboard players reset #version.compare.relation.Result cu-io
function cu:version/compare/_func/normalize_input

execute store result score #version.compare.relation.Result cu-io run function cu:version/compare/_func/relation

function cu:version/compare/_reset_function

return run execute unless score #version.compare.relation.Result cu-io matches 0 run scoreboard players get #version.compare.relation.Result cu-io
