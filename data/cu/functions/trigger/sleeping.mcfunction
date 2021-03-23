execute if entity @s[predicate=!minecraft:sleeping,tag=cu.sleeping] run function #minecraft:sleeping-end
tag @s[predicate=!minecraft:sleeping,tag=cu.sleeping] remove cu.sleeping

execute if entity @s[predicate=minecraft:sleeping,tag=!cu.sleeping] run function #minecraft:sleeping-start
tag @s[predicate=minecraft:sleeping,tag=!cu.sleeping] add cu.sleeping
