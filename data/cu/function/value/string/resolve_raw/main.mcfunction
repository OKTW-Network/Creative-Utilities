data remove storage cu:io value.string.resolve_raw.Result

execute summon minecraft:text_display run function cu:value/string/resolve_raw/_func

data remove storage cu:io value.string.resolve_raw.Input

return run execute if data storage cu:io value.string.resolve_raw.Result
