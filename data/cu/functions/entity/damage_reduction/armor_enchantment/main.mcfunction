data remove storage cu:get item
function cu:entity/get/feet_armor
function cu:entity/get/legs_armor
function cu:entity/get/chest_armor
function cu:entity/get/head_armor
data modify storage cu:entity damage_reduction._armorItems append from storage cu:get item

data modify storage math:io addition.input append from storage cu:entity damage_reduction._armorItems[].tag.Enchantments[{id:"minecraft:protection"}].lvl
function math:addition/main
scoreboard players operation #entity.damage_reduction._enchantmentProtectionFactor cu = #addition.result math

execute if score #entity.damage_reduction.damageType.fire cu matches 1 run function cu:entity/damage_reduction/armor_enchantment/fire_protection
execute if score #entity.damage_reduction.damageType.blast cu matches 1 run function cu:entity/damage_reduction/armor_enchantment/blast_protection
execute if score #entity.damage_reduction.damageType.projectile cu matches 1 run function cu:entity/damage_reduction/armor_enchantment/projectile_protection
execute if score #entity.damage_reduction.damageType.fall cu matches 1 run function cu:entity/damage_reduction/armor_enchantment/feather_falling

scoreboard players operation #entity.damage_reduction._enchantmentProtectionFactor cu < #20 num
scoreboard players operation #entity.damage_reduction._enchantmentProtectionFactor cu *= #100 num
scoreboard players operation #entity.damage_reduction._enchantmentProtectionFactor cu /= #25 num
scoreboard players remove #entity.damage_reduction._enchantmentProtectionFactor cu 100
scoreboard players operation #entity.damage_reduction._enchantmentProtectionFactor cu *= #-1 num
scoreboard players operation #entity.damage_reduction.damage cu *= #entity.damage_reduction._enchantmentProtectionFactor cu
scoreboard players operation #entity.damage_reduction.damage cu /= #100 num
