execute if entity @s[predicate=!minecraft:sneaking,tag=cu._status.sneaking] run function cu:trigger/sneak/end
execute if entity @s[predicate=minecraft:sneaking,tag=!cu._status.sneaking] run function cu:trigger/sneak/start
