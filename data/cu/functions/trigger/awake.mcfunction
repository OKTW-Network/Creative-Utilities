execute if entity @s[predicate=!minecraft:awake,tag=cu._status.awake] run function #minecraft:sleep
tag @s[predicate=!minecraft:awake,tag=cu._status.awake] remove cu._status.awake

execute if entity @s[predicate=minecraft:awake,tag=!cu._status.awake] run function #minecraft:awake
tag @s[predicate=minecraft:awake,tag=!cu._status.awake] add cu._status.awake
