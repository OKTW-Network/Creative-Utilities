data modify storage cu:internal dummy set value {namespace:"cu:io",path:"data.list.easy_index.Input[0]"}
$data modify storage cu:internal dummy.path set value "data.list.easy_index.Input[$(index)]"
execute store success score #1 temp run function cu:data/lazy_get_storage_path with storage cu:internal dummy
execute if score #1 temp matches 1.. run data modify storage cu:io data.list.easy_index.Result set from storage cu:io data.lazy_get_storage_path.Result
