execute if entity @s[type=minecraft:item_frame] store result score #object0 UUIDMatch run data get entity @s Item.tag.customUUID[0]
execute if entity @s[type=minecraft:item_frame] store result score #object1 UUIDMatch run data get entity @s Item.tag.customUUID[1]
execute if entity @s[type=minecraft:item_frame] store result score #object2 UUIDMatch run data get entity @s Item.tag.customUUID[2]
execute if entity @s[type=minecraft:item_frame] store result score #object3 UUIDMatch run data get entity @s Item.tag.customUUID[3]

execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 0 store result score #object0 UUIDMatch run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[0]
execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 0 store result score #object1 UUIDMatch run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[1]
execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 0 store result score #object2 UUIDMatch run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[2]
execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 0 store result score #object3 UUIDMatch run data get entity @s HandItems[0].tag.EntityTag.Item.tag.customUUID[3]

execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 1 store result score #object0 UUIDMatch run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[0]
execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 1 store result score #object1 UUIDMatch run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[1]
execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 1 store result score #object2 UUIDMatch run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[2]
execute if entity @s[type=minecraft:armor_stand] if score #hand UUIDMatch matches 1 store result score #object3 UUIDMatch run data get entity @s HandItems[1].tag.EntityTag.Item.tag.customUUID[3]
