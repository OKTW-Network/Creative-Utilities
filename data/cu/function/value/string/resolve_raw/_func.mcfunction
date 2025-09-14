data modify entity @s text set from storage cu:io value.string.resolve_raw.Input
data modify storage cu:io value.string.resolve_raw.Result set from entity @s text
kill @s
