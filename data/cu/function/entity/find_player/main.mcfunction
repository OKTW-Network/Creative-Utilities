tag @e remove cu._tag.entity.find_player.elect
execute if data storage cu:entity find_player.input[0] run function cu:entity/find_player/_recursive

data remove storage cu:entity find_player.input
