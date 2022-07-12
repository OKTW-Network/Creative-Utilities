execute store result score #UUID.match.object0 cu run data get entity @s UUID[0]
execute store result score #UUID.match.object1 cu run data get entity @s UUID[1]
execute store result score #UUID.match.object2 cu run data get entity @s UUID[2]
execute store result score #UUID.match.object3 cu run data get entity @s UUID[3]

execute if score #UUID.match.findCustom cu matches 1 run function cu:uuid/match/get-object-custom
