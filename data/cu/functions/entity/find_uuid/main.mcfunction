# can't find entities across dimensions MC-260591
tag @e remove cu._tag.entity.find_uuid.elect
execute if data storage cu:entity find_uuid.input[0] run function cu:entity/find_uuid/_recursive

data remove storage cu:entity find_uuid.input
