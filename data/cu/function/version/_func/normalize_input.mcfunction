execute if score #version.Input.version_x cu-io matches ..-1 run scoreboard players set #version.Input.version_x cu-io 0
execute if score #version.Input.version_y cu-io matches ..-1 run scoreboard players set #version.Input.version_y cu-io 0
execute if score #version.Input.version_z cu-io matches ..-1 run scoreboard players set #version.Input.version_z cu-io 0
data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io version.Input.version_tag
data modify storage cu:io version.Input.version_tag set from storage cu:internal dummy
