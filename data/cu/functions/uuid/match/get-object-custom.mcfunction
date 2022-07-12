execute if entity @s[type=minecraft:item_frame] store result score #UUID.match.object0 cu run data get entity @s Item.tag.customUUID[0]
execute if entity @s[type=minecraft:item_frame] store result score #UUID.match.object1 cu run data get entity @s Item.tag.customUUID[1]
execute if entity @s[type=minecraft:item_frame] store result score #UUID.match.object2 cu run data get entity @s Item.tag.customUUID[2]
execute if entity @s[type=minecraft:item_frame] store result score #UUID.match.object3 cu run data get entity @s Item.tag.customUUID[3]

execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 0 store result score #UUID.match.object0 cu run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[0]
execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 0 store result score #UUID.match.object1 cu run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[1]
execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 0 store result score #UUID.match.object2 cu run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[2]
execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 0 store result score #UUID.match.object3 cu run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[3]

execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 1 store result score #UUID.match.object0 cu run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[0]
execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 1 store result score #UUID.match.object1 cu run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[1]
execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 1 store result score #UUID.match.object2 cu run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[2]
execute if entity @s[type=minecraft:armor_stand] if score #UUID.match.custom.hand cu matches 1 store result score #UUID.match.object3 cu run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[3]
