execute if entity @s[predicate=!minecraft:sneaking,tag=cu.sneaking] run function #minecraft:sneak-end
tag @s[predicate=!minecraft:sneaking,tag=cu.sneaking] remove cu.sneaking

execute if entity @s[predicate=minecraft:sneaking,tag=!cu.sneaking] run function #minecraft:sneak-start
tag @s[predicate=minecraft:sneaking,tag=!cu.sneaking] add cu.sneaking
