scoreboard players set #version.compare._func.relation.diff cu-internal 0
execute if score #version.compare.Input.1.version_x cu-io < #version.compare.Input.2.version_x cu-io run scoreboard players add #version.compare._func.relation.diff cu-internal 1000
execute if score #version.compare.Input.1.version_x cu-io > #version.compare.Input.2.version_x cu-io run scoreboard players remove #version.compare._func.relation.diff cu-internal 1000
execute if score #version.compare.Input.1.version_y cu-io < #version.compare.Input.2.version_y cu-io run scoreboard players add #version.compare._func.relation.diff cu-internal 100
execute if score #version.compare.Input.1.version_y cu-io > #version.compare.Input.2.version_y cu-io run scoreboard players remove #version.compare._func.relation.diff cu-internal 100
execute if score #version.compare.Input.1.version_z cu-io < #version.compare.Input.2.version_z cu-io run scoreboard players add #version.compare._func.relation.diff cu-internal 10
execute if score #version.compare.Input.1.version_z cu-io > #version.compare.Input.2.version_z cu-io run scoreboard players remove #version.compare._func.relation.diff cu-internal 10
execute if score #version.compare._func.relation.diff cu-internal matches 1.. run return 2
execute if score #version.compare._func.relation.diff cu-internal matches ..-1 run return 3
scoreboard players set #version.compare._func.relation.empty_tag cu-internal 0
execute if data storage cu:io version.compare.Input.1{version_tag:''} run scoreboard players add #version.compare._func.relation.empty_tag cu-internal 1
execute if data storage cu:io version.compare.Input.2{version_tag:''} run scoreboard players add #version.compare._func.relation.empty_tag cu-internal 2
execute if score #version.compare._func.relation.empty_tag cu-internal matches 2 run return 4
execute if score #version.compare._func.relation.empty_tag cu-internal matches 1 run return 5
execute if score #version.compare._func.relation.empty_tag cu-internal matches 0 if function cu:version/compare/_func/check_different_tag run return 6
execute if score #version.compare._func.relation.diff cu-internal matches 0 run return 1
