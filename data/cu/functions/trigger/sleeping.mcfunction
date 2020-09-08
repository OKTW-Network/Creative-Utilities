execute if entity @s[predicate=!minecraft:sleeping,tag=isSleeping] run function #minecraft:sleeping-end
tag @s[predicate=!minecraft:sleeping,tag=isSleeping] remove isSleeping

execute if entity @s[predicate=minecraft:sleeping,tag=!isSleeping] run function #minecraft:sleeping-start
tag @s[predicate=minecraft:sleeping,tag=!isSleeping] add isSleeping
