# 1.20.4
execute if score #entity.damage_reduction.damage cu matches 10000000.. run scoreboard players set #entity.damage_reduction.damage cu 9999999
execute unless score #entity.damage_reduction.damage cu matches 0..9999999 run scoreboard players set #entity.damage_reduction.damage cu 0
execute unless score #entity.damage_reduction.ignoreArmorPercent cu matches 0..100 run scoreboard players set #entity.damage_reduction.ignoreArmorPercent cu 0
execute unless score #entity.damage_reduction.ignoreEnchantmentPercent cu matches 0..100 run scoreboard players set #entity.damage_reduction.ignoreEnchantmentPercent cu 0
execute unless score #entity.damage_reduction.ignoreResistanceEffect cu matches 0..100 run scoreboard players set #entity.damage_reduction.ignoreResistanceEffect cu 0
execute unless score #entity.damage_reduction.damageType.fire cu matches 0..1 run scoreboard players set #entity.damage_reduction.damageType.fire cu 0
execute unless score #entity.damage_reduction.damageType.blast cu matches 0..1 run scoreboard players set #entity.damage_reduction.damageType.blast cu 0
execute unless score #entity.damage_reduction.damageType.projectile cu matches 0..1 run scoreboard players set #entity.damage_reduction.damageType.projectile cu 0
execute unless score #entity.damage_reduction.damageType.fall cu matches 0..1 run scoreboard players set #entity.damage_reduction.damageType.fall cu 0

execute unless score #entity.damage_reduction.ignoreArmorPercent cu matches 100 run function cu:entity/damage_reduction/armor
execute unless score #entity.damage_reduction.ignoreEnchantmentPercent cu matches 100 run function cu:entity/damage_reduction/armor_enchantment/main
execute unless score #entity.damage_reduction.ignoreResistanceEffect cu matches 100 if data entity @s active_effects[{id:"minecraft:resistance"}] run function cu:entity/damage_reduction/resistance_effect

scoreboard players operation #entity.damage_reduction.result cu = #entity.damage_reduction.damage cu

scoreboard players reset #entity.damage_reduction.damage cu
scoreboard players reset #entity.damage_reduction.ignoreArmorPercent cu
scoreboard players reset #entity.damage_reduction.ignoreEnchantmentPercent cu
scoreboard players reset #entity.damage_reduction.ignoreResistanceEffect cu
scoreboard players reset #entity.damage_reduction.damageType.fire cu
scoreboard players reset #entity.damage_reduction.damageType.blast cu
scoreboard players reset #entity.damage_reduction.damageType.projectile cu
scoreboard players reset #entity.damage_reduction.damageType.fall cu
scoreboard players reset #entity.damage_reduction._enchantmentProtectionFactor cu
