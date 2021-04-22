execute if entity @s[predicate=!minecraft:sneaking,tag=cu.sneaking] run tag @s add cu.sneakEnd
tag @s[tag=cu.sneakEnd,tag=cu.sneaking] remove cu.sneaking
execute if entity @s[tag=cu.sneakEnd] run function #minecraft:sneak-end
tag @s[tag=cu.sneakEnd] remove cu.sneakEnd

execute if entity @s[predicate=minecraft:sneaking,tag=!cu.sneaking] run tag @s add cu.sneakStart
tag @s[tag=cu.sneakStart,tag=!cu.sneaking] add cu.sneaking
execute if entity @s[tag=cu.sneakStart] run function #minecraft:sneak-start
tag @s[tag=cu.sneakStart] remove cu.sneakStart
