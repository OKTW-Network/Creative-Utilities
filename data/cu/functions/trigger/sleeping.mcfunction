execute if entity @s[predicate=!minecraft:entity_properties/player/sleeping,tag=cu._status.sleeping] run tag @s add cu._task.trigger.sleeping_end
tag @s[predicate=!minecraft:entity_properties/player/sleeping,tag=cu._status.sleeping] remove cu._status.sleeping

execute if entity @s[predicate=minecraft:entity_properties/player/sleeping,tag=!cu._status.sleeping] run tag @s add cu._task.trigger.sleeping_start
tag @s[predicate=minecraft:entity_properties/player/sleeping,tag=!cu._status.sleeping] add cu._status.sleeping
