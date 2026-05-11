data modify storage cu:io data.different.Input.1 set from storage cu:io data.list.find.Input.data[0]
data modify storage cu:io data.different.Input.2 set from storage cu:io data.list.find.Input.target
function cu:data/different/main
execute if score #data.list.find.Option.method cu-io matches 1 if score #data.different.Result cu-io matches 1 run return 1
execute if score #data.list.find.Option.method cu-io matches 0 if score #data.different.Result cu-io matches 0 run return 2
return fail
