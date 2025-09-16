scoreboard players reset #data.lazy_check_path.Result cu-io

$data modify storage cu:internal data.lazy_check_path.Input set value {data:$(data),path:'$(path)'}
function cu:data/lazy_check_path/_func with storage cu:internal data.lazy_check_path.Input

data remove storage cu:internal data.lazy_check_path

return run execute unless score #data.lazy_check_path.Result cu-io matches 0 run scoreboard players get #data.lazy_check_path.Result cu-io
