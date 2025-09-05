data modify storage cu:entity hitbox.create_volume_value.result set value {sizeX:0f,sizeY:0f,sizeZ:0f,anchor1_offsetX:0f,anchor1_offsetY:0f,anchor1_offsetZ:0f,anchor2_offsetX:0f,anchor2_offsetY:0f,anchor2_offsetZ:0f}

$data modify storage cu:temp dummy set value {sizeX:$(sizeX),sizeY:$(sizeY),sizeZ:$(sizeZ)}
execute store result score #entity.hitbox.create_volume_value.sizeX cu run data get storage cu:temp dummy.sizeX 1000
execute store result score #entity.hitbox.create_volume_value.sizeY cu run data get storage cu:temp dummy.sizeY 1000
execute store result score #entity.hitbox.create_volume_value.sizeZ cu run data get storage cu:temp dummy.sizeZ 1000
scoreboard players set #1 temp 0
scoreboard players set #2 temp 128000
scoreboard players operation #entity.hitbox.create_volume_value.sizeX cu > #1 temp
scoreboard players operation #entity.hitbox.create_volume_value.sizeX cu < #2 temp
scoreboard players operation #entity.hitbox.create_volume_value.sizeY cu > #1 temp
scoreboard players operation #entity.hitbox.create_volume_value.sizeY cu < #2 temp
scoreboard players operation #entity.hitbox.create_volume_value.sizeZ cu > #1 temp
scoreboard players operation #entity.hitbox.create_volume_value.sizeZ cu < #2 temp

scoreboard players set #1 temp 10
scoreboard players set #2 temp 2
scoreboard players set #3 temp -1
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetX cu = #entity.hitbox.create_volume_value.sizeX cu
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetX cu *= #1 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetX cu /= #2 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetX cu *= #3 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor2.offsetX cu = #entity.hitbox.create_volume_value.anchor1.offsetX cu
execute if score #entity.hitbox.create_volume_value.sizeX cu matches ..999 run scoreboard players add #entity.hitbox.create_volume_value.anchor2.offsetX cu 10000
execute if score #entity.hitbox.create_volume_value.sizeX cu matches ..999 run scoreboard players operation #entity.hitbox.create_volume_value.anchor2.offsetX cu *= #3 temp
execute if score #entity.hitbox.create_volume_value.sizeX cu matches 1000.. run scoreboard players remove #entity.hitbox.create_volume_value.sizeX cu 1000
execute store result storage cu:entity hitbox.create_volume_value.result.sizeX float 0.001 run scoreboard players get #entity.hitbox.create_volume_value.sizeX cu
execute store result storage cu:entity hitbox.create_volume_value.result.anchor1_offsetX float 0.0001 run scoreboard players get #entity.hitbox.create_volume_value.anchor1.offsetX cu
execute store result storage cu:entity hitbox.create_volume_value.result.anchor2_offsetX float 0.0001 run scoreboard players get #entity.hitbox.create_volume_value.anchor2.offsetX cu

scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetY cu = #entity.hitbox.create_volume_value.sizeY cu
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetY cu *= #1 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetY cu /= #2 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetY cu *= #3 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor2.offsetY cu = #entity.hitbox.create_volume_value.anchor1.offsetY cu
execute if score #entity.hitbox.create_volume_value.sizeY cu matches ..999 run scoreboard players add #entity.hitbox.create_volume_value.anchor2.offsetY cu 10000
execute if score #entity.hitbox.create_volume_value.sizeY cu matches ..999 run scoreboard players operation #entity.hitbox.create_volume_value.anchor2.offsetY cu *= #3 temp
execute if score #entity.hitbox.create_volume_value.sizeY cu matches 1000.. run scoreboard players remove #entity.hitbox.create_volume_value.sizeY cu 1000
execute store result storage cu:entity hitbox.create_volume_value.result.sizeY float 0.001 run scoreboard players get #entity.hitbox.create_volume_value.sizeX cu
execute store result storage cu:entity hitbox.create_volume_value.result.anchor1_offsetY float 0.0001 run scoreboard players get #entity.hitbox.create_volume_value.anchor1.offsetY cu
execute store result storage cu:entity hitbox.create_volume_value.result.anchor2_offsetY float 0.0001 run scoreboard players get #entity.hitbox.create_volume_value.anchor2.offsetY cu

scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetZ cu = #entity.hitbox.create_volume_value.sizeZ cu
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetZ cu *= #1 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetZ cu /= #2 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor1.offsetZ cu *= #3 temp
scoreboard players operation #entity.hitbox.create_volume_value.anchor2.offsetZ cu = #entity.hitbox.create_volume_value.anchor1.offsetZ cu
execute if score #entity.hitbox.create_volume_value.sizeZ cu matches ..999 run scoreboard players add #entity.hitbox.create_volume_value.anchor2.offsetZ cu 10000
execute if score #entity.hitbox.create_volume_value.sizeZ cu matches ..999 run scoreboard players operation #entity.hitbox.create_volume_value.anchor2.offsetZ cu *= #3 temp
execute if score #entity.hitbox.create_volume_value.sizeZ cu matches 1000.. run scoreboard players remove #entity.hitbox.create_volume_value.sizeZ cu 1000
execute store result storage cu:entity hitbox.create_volume_value.result.sizeZ float 0.001 run scoreboard players get #entity.hitbox.create_volume_value.sizeX cu
execute store result storage cu:entity hitbox.create_volume_value.result.anchor1_offsetZ float 0.0001 run scoreboard players get #entity.hitbox.create_volume_value.anchor1.offsetZ cu
execute store result storage cu:entity hitbox.create_volume_value.result.anchor2_offsetZ float 0.0001 run scoreboard players get #entity.hitbox.create_volume_value.anchor2.offsetZ cu
