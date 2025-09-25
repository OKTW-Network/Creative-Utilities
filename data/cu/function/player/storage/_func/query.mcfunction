data modify storage cu:io data.list.find.Input.data append from storage cu:storage player[].uuid
data modify storage cu:io data.list.find.Input.target set from entity @s UUID
scoreboard players set #data.list.find.Option.count cu-io 1
return run function cu:data/list/find/main
