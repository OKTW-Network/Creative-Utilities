data modify storage cu:internal dummy set value {key:''}
data modify storage cu:internal dummy.key set from storage cu:io data.list.easy_deduplicate.Input[0]
execute store result score #1 temp run function cu:data/list/easy_deduplicate/_func/lazy_merge_key with storage cu:internal dummy
execute if score #1 temp matches 1 run data modify storage cu:io data.list.easy_deduplicate.Result append from storage cu:io data.list.easy_deduplicate.Input[0]
data remove storage cu:io data.list.easy_deduplicate.Input[0]

execute if data storage cu:io data.list.easy_deduplicate.Input[0] run function cu:data/list/easy_deduplicate/_func/deduplicate
