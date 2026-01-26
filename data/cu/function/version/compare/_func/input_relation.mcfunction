scoreboard players set #1 temp 0
execute if score #version.compare.Input.1.version_x cu-io < #version.compare.Input.2.version_x cu-io run scoreboard players add #1 temp 1000
execute if score #version.compare.Input.1.version_x cu-io > #version.compare.Input.2.version_x cu-io run scoreboard players remove #1 temp 1000
execute if score #version.compare.Input.1.version_y cu-io < #version.compare.Input.2.version_y cu-io run scoreboard players add #1 temp 100
execute if score #version.compare.Input.1.version_y cu-io > #version.compare.Input.2.version_y cu-io run scoreboard players remove #1 temp 100
execute if score #version.compare.Input.1.version_z cu-io < #version.compare.Input.2.version_z cu-io run scoreboard players add #1 temp 10
execute if score #version.compare.Input.1.version_z cu-io > #version.compare.Input.2.version_z cu-io run scoreboard players remove #1 temp 10
execute if score #1 temp matches 1.. run return 2
execute if score #1 temp matches ..-1 run return 3
scoreboard players set #2 temp 0
execute if data storage cu:io version.compare.Input.1{version_tag:''} run scoreboard players add #2 temp 1
execute if data storage cu:io version.compare.Input.2{version_tag:''} run scoreboard players add #2 temp 2
execute if score #2 temp matches 2 run return 4
execute if score #2 temp matches 1 run return 5
execute if score #2 temp matches 0 if function cu:version/compare/_func/check_input_tag_different run return 6
return 1