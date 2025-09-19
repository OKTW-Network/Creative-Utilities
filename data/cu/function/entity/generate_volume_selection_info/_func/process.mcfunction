scoreboard players set #1 temp 100
scoreboard players operation #entity.generate_volume_selection_info.size cu-internal *= #1 temp
scoreboard players operation #entity.generate_volume_selection_info.offset cu-internal *= #1 temp

scoreboard players operation #entity.generate_volume_selection_info.pos_1 cu-internal = #entity.generate_volume_selection_info.size cu-internal
execute if score #entity.generate_volume_selection_info.center cu-internal matches 1 run function cu:entity/generate_volume_selection_info/_func/centered
scoreboard players operation #entity.generate_volume_selection_info.pos_1 cu-internal += #entity.generate_volume_selection_info.offset cu-internal

scoreboard players operation #entity.generate_volume_selection_info.pos_2 cu-internal = #entity.generate_volume_selection_info.pos_1 cu-internal
execute if score #entity.generate_volume_selection_info.size cu-internal matches ..99999 run function cu:entity/generate_volume_selection_info/_func/small_size

scoreboard players remove #entity.generate_volume_selection_info.size cu-internal 100000
scoreboard players set #1 temp 0
scoreboard players operation #entity.generate_volume_selection_info.size cu-internal > #1 temp
