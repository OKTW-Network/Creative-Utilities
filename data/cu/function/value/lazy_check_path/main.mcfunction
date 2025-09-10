scoreboard players reset #value.lazy_check_path.Result cu-io

$data modify storage cu:internal value.lazy_check_path.Input set value {data:$(data),path:'$(path)'}
function cu:value/lazy_check_path/_func with storage cu:internal value.lazy_check_path.Input

data remove storage cu:internal value.lazy_check_path

return run execute unless score #value.lazy_check_path.Result cu-io matches 0 run scoreboard players get #value.lazy_check_path.Result cu-io
