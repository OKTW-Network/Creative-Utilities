execute if entity @s[predicate=!minecraft:entity_properties/player/awake,tag=cu._status.awake] run tag @s add cu._task.trigger.sleep
tag @s[predicate=!minecraft:entity_properties/player/awake,tag=cu._status.awake] remove cu._status.awake

execute if entity @s[predicate=minecraft:entity_properties/player/awake,tag=!cu._status.awake] run tag @s add cu._task.trigger.awake
tag @s[predicate=minecraft:entity_properties/player/awake,tag=!cu._status.awake] add cu._status.awake
