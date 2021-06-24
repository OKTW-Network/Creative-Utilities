### 1.17

# Player
execute if entity @s[type=minecraft:player,predicate=!minecraft:sneaking] run function cu:library/hitbox/data/player
execute if entity @s[type=minecraft:player,predicate=minecraft:sneaking] run function cu:library/hitbox/data/player-sneaking

# Blaze
execute if entity @s[type=minecraft:blaze] run function cu:library/hitbox/data/blaze

# Creeper
execute if entity @s[type=minecraft:creeper] run function cu:library/hitbox/data/creeper

# Skeleton/Stray/Villager/Witch/Vindicator/Pillager/Evoker/Illusioner/Zombie Villager/Zombie/Drowned/Husk/Piglin/Zombified Piglin
execute if entity @s[type=#minecraft:hitbox-humanlike] run function cu:library/hitbox/data/humanlike

# baby Zombie Villager/Zombie/Drowned/Husk/Zombie Pigman
execute if entity @s[type=#minecraft:hitbox-humanlike,type=#minecraft:zombified,nbt={IsBaby:1b}] run function cu:library/hitbox/data/humanlike-zombified-baby

# Guardian
execute if entity @s[type=minecraft:guardian] run function cu:library/hitbox/data/guardian

# Elder Guardian
execute if entity @s[type=minecraft:elder_guardian] run function cu:library/hitbox/data/elder_guardian

# Silverfish/Endermite
execute if entity @s[type=#minecraft:bug] run function cu:library/hitbox/data/bug

# Phantom
execute if entity @s[type=minecraft:phantom] run function cu:library/hitbox/data/phantom

# Slime/Magma Cube
execute if entity @s[type=#minecraft:hitbox-slime] run function cu:library/hitbox/data/slime

# Wither Skeleton
execute if entity @s[type=minecraft:wither_skeleton] run function cu:library/hitbox/data/wither_skeleton

# Enderman
execute if entity @s[type=minecraft:enderman] run function cu:library/hitbox/data/enderman

# Spider
execute if entity @s[type=minecraft:spider] run function cu:library/hitbox/data/spider

# Cave Spider
execute if entity @s[type=minecraft:cave_spider] run function cu:library/hitbox/data/cave_spider

# Ravager
execute if entity @s[type=minecraft:ravager] run function cu:library/hitbox/data/ravager

# Vex
execute if entity @s[type=minecraft:vex] run function cu:library/hitbox/data/vex

# Ghast
execute if entity @s[type=minecraft:ghast] run function cu:library/hitbox/data/ghast

# Shulker
execute if entity @s[type=minecraft:shulker] run function cu:library/hitbox/data/shulker


# Iron Golem
execute if entity @s[type=minecraft:iron_golem] run function cu:library/hitbox/data/iron_golem

# Snow Golem
execute if entity @s[type=minecraft:snow_golem] run function cu:library/hitbox/data/snow_golem


# Dolphin
execute if entity @s[type=minecraft:dolphin] run function cu:library/hitbox/data/dolphin

# Wolf
execute if entity @s[type=minecraft:wolf] run function cu:library/hitbox/data/wolf

# Polar Bear
execute if entity @s[type=minecraft:polar_bear] run function cu:library/hitbox/data/polar_bear

# Panda
execute if entity @s[type=minecraft:panda] run function cu:library/hitbox/data/panda

# Llama/Trade Llama
execute if entity @s[type=#minecraft:llama] run function cu:library/hitbox/data/llama

# Pufferfish
execute if entity @s[type=minecraft:pufferfish] run function cu:library/hitbox/data/pufferfish

# Bee
execute if entity @s[type=minecraft:bee] run function cu:library/hitbox/data/bee


# Axolotl
execute if entity @s[type=minecraft:axolotl] run function cu:library/hitbox/data/axolotl

# Ocelot/Cat
execute if entity @s[type=#minecraft:hitbox-cat] run function cu:library/hitbox/data/cat

# Cod
execute if entity @s[type=minecraft:cod] run function cu:library/hitbox/data/cod

# Fox
execute if entity @s[type=minecraft:fox] run function cu:library/hitbox/data/fox

# Goat
execute if entity @s[type=minecraft:goat] run function cu:library/hitbox/data/goat

# Salmon
execute if entity @s[type=minecraft:salmon] run function cu:library/hitbox/data/salmon

# Tropical Fish
execute if entity @s[type=minecraft:tropical_fish] run function cu:library/hitbox/data/tropical_fish

# Parrot
execute if entity @s[type=minecraft:parrot] run function cu:library/hitbox/data/parrot

# Bat
execute if entity @s[type=minecraft:bat] run function cu:library/hitbox/data/bat

# Chicken
execute if entity @s[type=minecraft:chicken] run function cu:library/hitbox/data/chicken

# Pig
execute if entity @s[type=minecraft:pig] run function cu:library/hitbox/data/pig

# Cow/Mooshroom
execute if entity @s[type=#minecraft:hitbox-cow] run function cu:library/hitbox/data/cow

# Sheep
execute if entity @s[type=minecraft:sheep] run function cu:library/hitbox/data/sheep

# Rabbit
execute if entity @s[type=minecraft:rabbit] run function cu:library/hitbox/data/rabbit

# Turtle
execute if entity @s[type=minecraft:turtle] run function cu:library/hitbox/data/turtle

# Squid/Glow Squid
execute if entity @s[type=#minecraft:squids] run function cu:library/hitbox/data/squid

# Horse/Skeleton Horse/Zombie Horse/Donkey/Mule
execute if entity @s[type=#minecraft:hitbox-horse] run function cu:library/hitbox/data/horse

# Hoglin/Zoglin
execute if entity @s[type=#minecraft:hitbox-hoglin] run function cu:library/hitbox/data/hoglin

# Strider
execute if entity @s[type=minecraft:strider] run function cu:library/hitbox/data/strider
