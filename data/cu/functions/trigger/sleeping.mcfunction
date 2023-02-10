execute if entity @s[predicate=!minecraft:entity_properties/player/sleeping,tag=cu._status.sleeping] run function #minecraft:sleeping-end
tag @s[predicate=!minecraft:entity_properties/player/sleeping,tag=cu._status.sleeping] remove cu._status.sleeping

execute if entity @s[predicate=minecraft:entity_properties/player/sleeping,tag=!cu._status.sleeping] run function #minecraft:sleeping-start
tag @s[predicate=minecraft:entity_properties/player/sleeping,tag=!cu._status.sleeping] add cu._status.sleeping
