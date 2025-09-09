execute unless score #version.compare.Input.1.version_x cu-io matches 0..2147483647 run scoreboard players set #version.compare.Input.1.version_x cu-io 0
execute unless score #version.compare.Input.1.version_y cu-io matches 0..2147483647 run scoreboard players set #version.compare.Input.1.version_y cu-io 0
execute unless score #version.compare.Input.1.version_z cu-io matches 0..2147483647 run scoreboard players set #version.compare.Input.1.version_z cu-io 0
data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io version.compare.Input.1.version_tag
data modify storage cu:io version.compare.Input.1.version_tag set from storage cu:internal dummy

execute unless score #version.compare.Input.2.version_x cu-io matches 0..2147483647 run scoreboard players set #version.compare.Input.2.version_x cu-io 0
execute unless score #version.compare.Input.2.version_y cu-io matches 0..2147483647 run scoreboard players set #version.compare.Input.2.version_y cu-io 0
execute unless score #version.compare.Input.2.version_z cu-io matches 0..2147483647 run scoreboard players set #version.compare.Input.2.version_z cu-io 0
data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io version.compare.Input.2.version_tag
data modify storage cu:io version.compare.Input.2.version_tag set from storage cu:internal dummy
