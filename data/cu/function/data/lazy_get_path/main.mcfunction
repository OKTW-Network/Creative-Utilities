data remove storage cu:io data.lazy_get_path.Result

$data modify storage cu:internal data.lazy_get_path.Input set value {data:$(data),path:'$(path)'}
function cu:data/lazy_get_path/_func with storage cu:internal data.lazy_get_path.Input

data remove storage cu:internal data.lazy_get_path

return run execute if data storage cu:io data.lazy_get_path.Result
