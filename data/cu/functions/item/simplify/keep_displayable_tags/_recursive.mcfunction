data modify storage cu:item simplify.keep_displayable_tags._tags set value {}
execute unless score #item.simplify.keep_displayable_tags.keepHideFlags cu matches 0 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.HideFlags run data modify storage cu:item simplify.keep_displayable_tags._tags.HideFlags set from storage cu:item simplify.keep_displayable_tags.items[0].tag.HideFlags
execute unless score #item.simplify.keep_displayable_tags.dropCustomModelData cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.CustomModelData run data modify storage cu:item simplify.keep_displayable_tags._tags.CustomModelData set from storage cu:item simplify.keep_displayable_tags.items[0].tag.CustomModelData
execute unless score #item.simplify.keep_displayable_tags.dropDisplayName cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.display.Name run data modify storage cu:item simplify.keep_displayable_tags._tags.display.Name set from storage cu:item simplify.keep_displayable_tags.items[0].tag.display.Name
execute unless score #item.simplify.keep_displayable_tags.dropDisplayLore cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.display.Lore run data modify storage cu:item simplify.keep_displayable_tags._tags.display.Lore set from storage cu:item simplify.keep_displayable_tags.items[0].tag.display.Lore
execute unless score #item.simplify.keep_displayable_tags.dropDisplayColor cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.display.color run data modify storage cu:item simplify.keep_displayable_tags._tags.display.color set from storage cu:item simplify.keep_displayable_tags.items[0].tag.display.color
execute unless score #item.simplify.keep_displayable_tags.dropEnchantments cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.Enchantments run data modify storage cu:item simplify.keep_displayable_tags._tags.Enchantments set from storage cu:item simplify.keep_displayable_tags.items[0].tag.Enchantments
execute unless score #item.simplify.keep_displayable_tags.dropAttributeModifiers cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.AttributeModifiers run data modify storage cu:item simplify.keep_displayable_tags._tags.AttributeModifiers set from storage cu:item simplify.keep_displayable_tags.items[0].tag.AttributeModifiers
execute unless score #item.simplify.keep_displayable_tags.dropPotion cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.Potion run data modify storage cu:item simplify.keep_displayable_tags._tags.Potion set from storage cu:item simplify.keep_displayable_tags.items[0].tag.Potion
execute unless score #item.simplify.keep_displayable_tags.dropCustomPotionEffects cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.CustomPotionEffects run data modify storage cu:item simplify.keep_displayable_tags._tags.CustomPotionEffects set from storage cu:item simplify.keep_displayable_tags.items[0].tag.CustomPotionEffects
execute unless score #item.simplify.keep_displayable_tags.dropCustomPotionColor cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.CustomPotionColor run data modify storage cu:item simplify.keep_displayable_tags._tags.CustomPotionColor set from storage cu:item simplify.keep_displayable_tags.items[0].tag.CustomPotionColor
execute unless score #item.simplify.keep_displayable_tags.dropTitle cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.title run data modify storage cu:item simplify.keep_displayable_tags._tags.title set from storage cu:item simplify.keep_displayable_tags.items[0].tag.title
execute unless score #item.simplify.keep_displayable_tags.dropAuthor cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.author run data modify storage cu:item simplify.keep_displayable_tags._tags.author set from storage cu:item simplify.keep_displayable_tags.items[0].tag.author
execute unless score #item.simplify.keep_displayable_tags.dropCanDestroy cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.CanDestroy run data modify storage cu:item simplify.keep_displayable_tags._tags.CanDestroy set from storage cu:item simplify.keep_displayable_tags.items[0].tag.CanDestroy
execute unless score #item.simplify.keep_displayable_tags.dropCanPlaceOn cu matches 1 if data storage cu:item simplify.keep_displayable_tags.items[0].tag.CanPlaceOn run data modify storage cu:item simplify.keep_displayable_tags._tags.CanPlaceOn set from storage cu:item simplify.keep_displayable_tags.items[0].tag.CanPlaceOn
data modify storage cu:item simplify.keep_displayable_tags.items[0].tag set from storage cu:item simplify.keep_displayable_tags._tags
data modify storage cu:item simplify.keep_displayable_tags.result append from storage cu:item simplify.keep_displayable_tags.items[0]
data remove storage cu:item simplify.keep_displayable_tags.items[0]
execute if data storage cu:item simplify.keep_displayable_tags.items[0] run function cu:item/simplify/keep_displayable_tags/_recursive
