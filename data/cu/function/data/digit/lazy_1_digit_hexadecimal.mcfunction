# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Results string.
#  Returns successful instead of the result.
data remove storage cu:io data.digit.lazy_1_digit_hexadecimal.Result
data modify storage cu:internal dummy set value ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f']
$return run data modify storage cu:io data.digit.lazy_1_digit_hexadecimal.Result set from storage cu:internal dummy[$(value)]
