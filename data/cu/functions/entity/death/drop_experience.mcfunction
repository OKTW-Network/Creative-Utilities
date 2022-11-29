function cu:library/experience/entity_death
execute store result score #1 calcu_temp run data get storage cu:library experience.result[0]
execute store result score #2 calcu_temp store result score #3 calcu_temp run data get storage cu:library experience.result[1]
scoreboard players operation #3 calcu_temp -= #1 calcu_temp
scoreboard players set #4 calcu_temp 0
execute if score #3 calcu_temp matches 1.. run function cu:uuid/generate
execute if score #3 calcu_temp matches 1.. store result score #4 calcu_temp run data get storage cu:uuid generate.result[0]
execute if score #3 calcu_temp matches 1.. run scoreboard players operation #4 calcu_temp %= #3 calcu_temp
scoreboard players operation #1 calcu_temp = @s expMin
scoreboard players operation #1 calcu_temp += #2 calcu_temp
execute if score #1 calcu_temp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["cu._tag.entityDeathExpOrb"]}
execute if score #1 calcu_temp matches 1.. store result entity @e[tag=cu._tag.entityDeathExpOrb,limit=1] Value short 1 run scoreboard players get #1 calcu_temp
tag @e[tag=cu._tag.entityDeathExpOrb] remove cu._tag.entityDeathExpOrb
