scoreboard players set #1 temp 2
scoreboard players operation #entity.generate_volume_selection_info.pos_1 cu-internal /= #1 temp
scoreboard players set #1 temp -1
scoreboard players operation #entity.generate_volume_selection_info.pos_1 cu-internal *= #1 temp
