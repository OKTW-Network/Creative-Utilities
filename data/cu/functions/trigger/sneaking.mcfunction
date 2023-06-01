execute if entity @s[predicate=!minecraft:entity_properties/sneaking,tag=cu._status.sneaking] run tag @s add cu._task.trigger.sneaking_end
tag @s[predicate=!minecraft:entity_properties/sneaking,tag=cu._status.sneaking] remove cu._status.sneaking

execute if entity @s[predicate=minecraft:entity_properties/sneaking,tag=!cu._status.sneaking] run tag @s add cu._task.trigger.sneaking_start
tag @s[predicate=minecraft:entity_properties/sneaking,tag=!cu._status.sneaking] add cu._status.sneaking
