function cu:data/easy_convert_to_hexadecimal_uuid/_func/resolve_to_2_hex_array/main
data modify storage cu:io data.string.easy_join.Input set from storage cu:internal data.easy_convert_to_hexadecimal_uuid.2_hex_array
function cu:data/string/easy_join/main
data modify storage cu:io data.easy_convert_to_hexadecimal_uuid.Result set from storage cu:io data.string.easy_join.Result
