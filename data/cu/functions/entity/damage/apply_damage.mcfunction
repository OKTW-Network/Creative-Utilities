execute store result score #entity.damage.victim._finalHealth cu run data get entity @s Health 1000
scoreboard players operation #entity.damage.victim._finalHealth cu -= #entity.damage.victim._damageTaken1000 cu
execute if score #entity.damage.victim._finalHealth cu matches ..0 at @s run function cu:entity/death/main
execute if score #entity.damage.victim._finalHealth cu matches ..0 run scoreboard players add #entity.damage.source.killCount cu 1
execute if score #entity.damage.victim._finalHealth cu matches 1.. store result entity @s Health float 0.001 run scoreboard players get #entity.damage.victim._finalHealth cu
execute if score #entity.damage.victim._finalHealth cu matches 1.. run data modify storage cu:temp +entity.damage.source.hurtEntity append from entity @s UUID
