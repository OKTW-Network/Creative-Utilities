data remove storage cu:io value.lazy_get_path.Result

$data modify storage cu:internal value.lazy_get_path.Input set value {data:$(data),path:'$(path)'}
function cu:value/lazy_get_path/_func with storage cu:internal value.lazy_get_path.Input

data remove storage cu:internal value.lazy_get_path

return run execute if data storage cu:io value.lazy_get_path.Result
