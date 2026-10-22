scoreboard players add #data.list.find.success_count cu-internal 1
execute store result storage cu:internal dummy int 1 run scoreboard players get #data.list.find.counter cu-internal
data modify storage cu:io data.list.find.Result append from storage cu:internal dummy
