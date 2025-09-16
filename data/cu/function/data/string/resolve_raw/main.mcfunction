data remove storage cu:io data.string.resolve_raw.Result

execute summon minecraft:text_display run function cu:data/string/resolve_raw/_func

data remove storage cu:io data.string.resolve_raw.Input

return run execute if data storage cu:io data.string.resolve_raw.Result
