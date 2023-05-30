data modify storage cu:item simplify.nbt_structure.input set from storage cu:item simulate_container._slot.pure
scoreboard players set #item.simplify.nbt_structure.keepID cu 0
scoreboard players set #item.simplify.nbt_structure.keepCount cu 0
scoreboard players set #item.simplify.nbt_structure.keepTag cu 0
scoreboard players set #item.simplify.nbt_structure.keepSlot cu 1
function cu:item/simplify/nbt_structure
data modify storage cu:item simulate_container._slot.pure set from storage cu:item simplify.nbt_structure.result
