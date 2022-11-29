execute unless data storage cu:temp +entity.damage.source.ignore{armor:1b} run function cu:entity/damage/damage_reduce/armor
function cu:entity/damage/damage_reduce/enchantment/main
execute unless data storage cu:temp +entity.damage.source.ignore{resistanceStatusEffect:1b} if entity @s[nbt={ActiveEffects:[{Id:11}]}] run function cu:entity/damage/damage_reduce/resistance_effect
