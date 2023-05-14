scoreboard players operation #entity.damage.victim._damageTaken1000 cu = #entity.damage.source.damageValue1000 cu
scoreboard players set #1 temp 999000
scoreboard players operation #entity.damage.victim._damageTaken1000 cu < #1 temp
execute if entity @s[type=#cu:entity/damage/special] run scoreboard players set #entity.damage.victim._damageTaken1000 cu 0
execute if entity @s[nbt={Invulnerable:1b}] unless data storage cu:temp +entity.damage.source.ignore{invulnerable:1b} run scoreboard players set #entity.damage.victim._damageTaken1000 cu 0
execute unless entity @s[nbt={HurtTime:0s}] unless data storage cu:temp +entity.damage.source.ignore{hurtCoolDown:1b} run scoreboard players set #entity.damage.victim._damageTaken1000 cu 0
# execute if entity @s[tag=cu._status.shieldReady] unless data storage cu:temp +entity.damage.source.ignore{shield:1b} run scoreboard players set #entity.damage.victim._damageTaken1000 cu 0
execute if score #entity.damage.victim._damageTaken1000 cu matches 1.. run function cu:entity/damage/damage_reduce/main
execute if score #entity.damage.victim._damageTaken1000 cu matches 1.. if entity @s run function cu:entity/damage/hurt_display
execute if score #entity.damage.victim._damageTaken1000 cu matches 1.. if entity @s run function cu:entity/damage/apply_damage
