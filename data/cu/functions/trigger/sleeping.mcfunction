execute if entity @s[predicate=!minecraft:sleeping,tag=cu._tag.sleeping] run function #minecraft:sleeping-end
tag @s[predicate=!minecraft:sleeping,tag=cu._tag.sleeping] remove cu._tag.sleeping

execute if entity @s[predicate=minecraft:sleeping,tag=!cu._tag.sleeping] run function #minecraft:sleeping-start
tag @s[predicate=minecraft:sleeping,tag=!cu._tag.sleeping] add cu._tag.sleeping
