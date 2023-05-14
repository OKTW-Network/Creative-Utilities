function cu:library/experience/entity_death
execute store result score #1 temp run data get storage cu:library experience.result[0]
execute store result score #2 temp store result score #3 temp run data get storage cu:library experience.result[1]
scoreboard players operation #3 temp -= #1 temp
scoreboard players set #4 temp 0
execute if score #3 temp matches 1.. run function cu:uuid/generate
execute if score #3 temp matches 1.. store result score #4 temp run data get storage cu:uuid generate.result[0]
execute if score #3 temp matches 1.. run scoreboard players operation #4 temp %= #3 temp
scoreboard players operation #1 temp = @s expMin
scoreboard players operation #1 temp += #2 temp
execute if score #1 temp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["cu._tag.entityDeathExpOrb"]}
execute if score #1 temp matches 1.. store result entity @e[tag=cu._tag.entityDeathExpOrb,limit=1] Value short 1 run scoreboard players get #1 temp
tag @e[tag=cu._tag.entityDeathExpOrb] remove cu._tag.entityDeathExpOrb
