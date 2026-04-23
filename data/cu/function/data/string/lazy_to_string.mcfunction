# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Try `/data modify ... set string` first.
#  Macros can cause the SNBT escape sequence to apply twice or conflict with something.
#   (observed strange errors)
#   {input:"\\"}, ... set value '\' =(X)> '\''
#   {input:"\\"}, ... set value "\" =(X)> "\"'
#   {input:"\'"}, ... set value '\'' =(X)> ''''
#   {input:"\'"}, ... set value "\'" =(O)> "'"
#   {input:"\""}, ... set value '\'' =(O)> '"'
#   {input:"\""}, ... set value "\"" =(X)> """'
#   (quick workarounds)
#   {input:"\\\\"}, ... set value '\\\\' => "\\"
#   {input:"\\'"}, ... set value '\\'' => "'"
#   {input:'\\\''}, ... set value '\\\'' => "'"
#   {input:"\\u0027"}, ... set value '\\u0027' => "'"
data remove storage cu:io data.string.lazy_to_string.Result
$return run data modify storage cu:io data.string.lazy_to_string.Result set value '$(input)'
