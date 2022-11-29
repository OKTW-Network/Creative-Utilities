scoreboard players set #entity.damage.source.damageValue1000 cu 0

data modify storage cu:temp +entity.damage.source.ignore.invulnerable set value 0b
data modify storage cu:temp +entity.damage.source.ignore.hurtCoolDown set value 0b
data modify storage cu:temp +entity.damage.source.ignore.armor set value 0b
# data modify storage cu:temp +entity.damage.source.ignore.shield set value 0b
data modify storage cu:temp +entity.damage.source.ignore.protectionEnchantment set value 0b
data modify storage cu:temp +entity.damage.source.ignore.projectileProtectionEnchantment set value 0b
data modify storage cu:temp +entity.damage.source.ignore.resistanceStatusEffect set value 0b

scoreboard players set #entity.damage.source.killCount cu 0
data modify storage cu:temp +entity.damage.source.hurtEntity set value []
