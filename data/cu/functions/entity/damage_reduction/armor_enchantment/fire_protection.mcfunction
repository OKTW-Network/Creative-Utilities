data modify storage math:io addition.input append from storage cu:entity damage_reduction._armorItems[].tag.Enchantments[{id:"minecraft:fire_protection"}].lvl
function math:addition/main
scoreboard players set #1 temp 2
scoreboard players operation #1 temp *= #addition.result math
scoreboard players operation #entity.damage_reduction._enchantmentProtectionFactor cu += #1 temp
