tag @e remove cu._tag.entity.interaction.find_corresponding_interaction.elect
execute unless score #entity.interaction.find_corresponding_interaction.findFromCandidates cu matches 1 as @e[type=minecraft:interaction] run function cu:entity/interaction/find_corresponding_interaction/_test_player
execute if score #entity.interaction.find_corresponding_interaction.findFromCandidates cu matches 1 as @e[type=minecraft:interaction,tag=cu._tag.entity.interaction.find_corresponding_interaction.candidate] run function cu:entity/interaction/find_corresponding_interaction/_test_player

tag @e remove cu._tag.entity.interaction.find_corresponding_interaction.candidate
scoreboard players reset #entity.interaction.find_corresponding_interaction.findFromCandidates cu
data remove storage cu:entity interaction.find_corresponding_interaction.input
