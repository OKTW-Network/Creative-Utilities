execute if entity @s[predicate=!minecraft:sneaking,tag=isSneak] run function #minecraft:sneak-end
tag @s[predicate=!minecraft:sneaking,tag=isSneak] remove isSneak

execute if entity @s[predicate=minecraft:sneaking,tag=!isSneak] run function #minecraft:sneak-start
tag @s[predicate=minecraft:sneaking,tag=!isSneak] add isSneak
