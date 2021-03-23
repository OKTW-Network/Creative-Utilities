execute if entity @s[predicate=!minecraft:awake,tag=cu.awake] run function #minecraft:sleep
tag @s[predicate=!minecraft:awake,tag=cu.awake] remove cu.awake

execute if entity @s[predicate=minecraft:awake,tag=!cu.awake] run function #minecraft:awake
tag @s[predicate=minecraft:awake,tag=!cu.awake] add cu.awake
