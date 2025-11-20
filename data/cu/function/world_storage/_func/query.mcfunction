data modify storage cu:io data.list.find.Input.data append from storage cu:storage world[].id
data modify storage cu:io data.list.find.Input.target set from storage cu:io world_storage.Input.id
scoreboard players set #data.list.find.Option.count cu-io 1
return run function cu:data/list/find/main
