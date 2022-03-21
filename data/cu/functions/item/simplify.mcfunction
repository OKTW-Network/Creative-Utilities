data modify storage cu:item simplify.tag set value {}

execute if data storage cu:item simplify.item.tag.CustomModelData run data modify storage cu:item simplify.tag.CustomModelData set from storage cu:item simplify.item.tag.CustomModelData
execute if data storage cu:item simplify.item.tag.display run data modify storage cu:item simplify.tag.display set from storage cu:item simplify.item.tag.display
execute if data storage cu:item simplify.item.tag.Enchantments run data modify storage cu:item simplify.tag.Enchantments set from storage cu:item simplify.item.tag.Enchantments
execute if data storage cu:item simplify.item.tag.Potion run data modify storage cu:item simplify.tag.Potion set from storage cu:item simplify.item.tag.Potion
execute if data storage cu:item simplify.item.tag.title run data modify storage cu:item simplify.tag.title set from storage cu:item simplify.item.tag.title
execute if data storage cu:item simplify.item.tag.author run data modify storage cu:item simplify.tag.author set from storage cu:item simplify.item.tag.author

data modify storage cu:item simplify.item.tag set from storage cu:item simplify.tag
