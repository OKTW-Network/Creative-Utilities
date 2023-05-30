execute unless score #item.simplify.nbt_structure.keepID cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.nbt_structure.keepID cu 1
execute unless score #item.simplify.nbt_structure.keepCount cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.nbt_structure.keepCount cu 1
execute unless score #item.simplify.nbt_structure.keepTag cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.nbt_structure.keepTag cu 1
execute unless score #item.simplify.nbt_structure.keepSlot cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.nbt_structure.keepSlot cu 1

data modify storage cu:item simplify.nbt_structure.result set from storage cu:item simplify.nbt_structure.input
data remove storage cu:item simplify.nbt_structure.input
execute unless score #item.simplify.nbt_structure.keepID cu matches 1 run data remove storage cu:item simplify.nbt_structure.result[].id
execute unless score #item.simplify.nbt_structure.keepCount cu matches 1 run data remove storage cu:item simplify.nbt_structure.result[].Count
execute unless score #item.simplify.nbt_structure.keepTag cu matches 1 run data remove storage cu:item simplify.nbt_structure.result[].tag
execute unless score #item.simplify.nbt_structure.keepSlot cu matches 1 run data remove storage cu:item simplify.nbt_structure.result[].Slot

scoreboard players reset #item.simplify.nbt_structure.keepID cu
scoreboard players reset #item.simplify.nbt_structure.keepCount cu
scoreboard players reset #item.simplify.nbt_structure.keepTag cu
scoreboard players reset #item.simplify.nbt_structure.keepSlot cu
