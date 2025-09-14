data remove storage cu:io version.raw_stringify.Result
function cu:version/_func/normalize_input

function cu:version/_func/stringify_and_resolve
data modify storage cu:io version.raw_stringify.Result set from storage cu:internal version.resolved_input

function cu:version/_reset_function

return run execute if data storage cu:io version.raw_stringify.Result
