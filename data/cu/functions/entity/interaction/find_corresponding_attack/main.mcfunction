tag @e remove cu._tag.entity.interaction.find_corresponding_attack.elect
execute unless score #entity.interaction.find_corresponding_attack.findFromCandidates cu matches 1 as @e[type=minecraft:interaction] run function cu:entity/interaction/find_corresponding_attack/_test_player
execute if score #entity.interaction.find_corresponding_attack.findFromCandidates cu matches 1 as @e[type=minecraft:interaction,tag=cu._tag.entity.interaction.find_corresponding_attack.candidate] run function cu:entity/interaction/find_corresponding_attack/_test_player

tag @e remove cu._tag.entity.interaction.find_corresponding_attack.candidate
scoreboard players reset #entity.interaction.find_corresponding_attack.findFromCandidates cu
data remove storage cu:entity interaction.find_corresponding_attack.input
