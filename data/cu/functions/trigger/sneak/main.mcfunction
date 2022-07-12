execute if entity @s[predicate=!minecraft:sneaking,tag=cu._tag.sneaking] run function cu:trigger/sneak/end
execute if entity @s[predicate=minecraft:sneaking,tag=!cu._tag.sneaking] run function cu:trigger/sneak/start
