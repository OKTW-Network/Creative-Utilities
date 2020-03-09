scoreboard players set #calculation_temp5 numeric 0

data remove storage cu:temporary comparator.input1
data remove storage cu:temporary comparator.input2
data merge storage cu:temporary {comparator:{input1:{}}}
data modify storage cu:temporary comparator.input2 set from entity @s ArmorItems[0]
function cu:comparator/different
execute store result score #calculation_temp4 numeric run data get storage cu:result comparator
scoreboard players operation #calculation_temp5 numeric += #calculation_temp4 numeric

data remove storage cu:temporary comparator.input1
data remove storage cu:temporary comparator.input2
data merge storage cu:temporary {comparator:{input1:{}}}
data modify storage cu:temporary comparator.input2 set from entity @s ArmorItems[1]
function cu:comparator/different
execute store result score #calculation_temp4 numeric run data get storage cu:result comparator
scoreboard players operation #calculation_temp5 numeric += #calculation_temp4 numeric

data remove storage cu:temporary comparator.input1
data remove storage cu:temporary comparator.input2
data merge storage cu:temporary {comparator:{input1:{}}}
data modify storage cu:temporary comparator.input2 set from entity @s ArmorItems[2]
function cu:comparator/different
execute store result score #calculation_temp4 numeric run data get storage cu:result comparator
scoreboard players operation #calculation_temp5 numeric += #calculation_temp4 numeric

data remove storage cu:temporary comparator.input1
data remove storage cu:temporary comparator.input2
data merge storage cu:temporary {comparator:{input1:{}}}
data modify storage cu:temporary comparator.input2 set from entity @s ArmorItems[3]
function cu:comparator/different
execute store result score #calculation_temp4 numeric run data get storage cu:result comparator
scoreboard players operation #calculation_temp5 numeric += #calculation_temp4 numeric
