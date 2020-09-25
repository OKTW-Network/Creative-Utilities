execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:give item
execute in cu:data_temp run loot give @s mine 0 1 0 minecraft:air{contentOnly:1b}
