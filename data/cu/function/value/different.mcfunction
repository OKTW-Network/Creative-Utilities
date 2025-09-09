scoreboard players reset #value.different.Result cu-IO
execute unless data storage cu:io value.different.Input.1 unless data storage cu:io value.different.Input.2 run return fail

execute store success score #value.different.Result cu run data modify storage cu:io value.different.Input.1 set from storage cu:io value.different.Input.2

data remove storage cu:io value.different.Input.1
data remove storage cu:io value.different.Input.2

return run execute unless score #value.different.Result cu-IO matches 0 run scoreboard players get #value.different.Result cu-IO
