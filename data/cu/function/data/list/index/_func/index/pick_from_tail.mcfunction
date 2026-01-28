data modify storage cu:io data.list.index.Result set value []
data modify storage cu:io data.list.index.Result append from storage cu:io data.list.index.Input[-1]
scoreboard players set #data.list.index.keep_recur cu-internal -1