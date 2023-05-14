scoreboard players set #1 temp 1000
execute unless data storage cu:temp +entity.damage.source.ignore{protectionEnchantment:1b} run function cu:entity/damage/damage_reduce/enchantment/protection
execute unless data storage cu:temp +entity.damage.source.ignore{projectileProtectionEnchantment:1b} run function cu:entity/damage/damage_reduce/enchantment/projectile_protection
scoreboard players operation #1 temp > #20 num
scoreboard players operation #entity.damage.victim._damageTaken1000 cu *= #1 temp
scoreboard players operation #entity.damage.victim._damageTaken1000 cu /= #1000 num
