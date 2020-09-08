execute if entity @s[predicate=!minecraft:awake,tag=isAwake] run function #minecraft:sleep
tag @s[predicate=!minecraft:awake,tag=isAwake] remove isAwake

execute if entity @s[predicate=minecraft:awake,tag=!isAwake] run function #minecraft:awake
tag @s[predicate=minecraft:awake,tag=!isAwake] add isAwake
