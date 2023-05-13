data remove storage cu:item simplify.keep_displayable_tags.result
execute unless score #item.simplify.keep_displayable_tags.keepHideFlags cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.keepHideFlags cu 0
execute unless score #item.simplify.keep_displayable_tags.dropCustomModelData cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropCustomModelData cu 0
execute unless score #item.simplify.keep_displayable_tags.dropDisplayName cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropDisplayName cu 0
execute unless score #item.simplify.keep_displayable_tags.dropDisplayLore cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropDisplayLore cu 0
execute unless score #item.simplify.keep_displayable_tags.dropDisplayColor cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropDisplayColor cu 0
execute unless score #item.simplify.keep_displayable_tags.dropEnchantments cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropEnchantments cu 0
execute unless score #item.simplify.keep_displayable_tags.dropAttributeModifiers cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropAttributeModifiers cu 0
execute unless score #item.simplify.keep_displayable_tags.dropPotion cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropPotion cu 0
execute unless score #item.simplify.keep_displayable_tags.dropCustomPotionEffects cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropCustomPotionEffects cu 0
execute unless score #item.simplify.keep_displayable_tags.dropCustomPotionColor cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropCustomPotionColor cu 0
execute unless score #item.simplify.keep_displayable_tags.dropTitle cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropTitle cu 0
execute unless score #item.simplify.keep_displayable_tags.dropAuthor cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropAuthor cu 0
execute unless score #item.simplify.keep_displayable_tags.dropCanDestroy cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropCanDestroy cu 0
execute unless score #item.simplify.keep_displayable_tags.dropCanPlaceOn cu matches -2147483648..2147483647 run scoreboard players set #item.simplify.keep_displayable_tags.dropCanPlaceOn cu 0
execute if data storage cu:item simplify.keep_displayable_tags.items[0] run function cu:item/simplify/keep_displayable_tags/_recursive

data remove storage cu:item simplify.keep_displayable_tags.items
data remove storage cu:item simplify.keep_displayable_tags._tags
scoreboard players reset #item.simplify.keep_displayable_tags.keepHideFlags cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropCustomModelData cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropDisplayName cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropDisplayLore cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropDisplayColor cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropEnchantments cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropAttributeModifiers cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropPotion cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropCustomPotionEffects cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropCustomPotionColor cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropTitle cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropAuthor cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropCanDestroy cu
scoreboard players reset #item.simplify.keep_displayable_tags.dropCanPlaceOn cu
