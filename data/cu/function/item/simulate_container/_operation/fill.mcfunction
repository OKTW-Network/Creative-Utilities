data modify storage cu:item simulate_container._value set value [{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b}]
data remove storage cu:item simulate_container._current.value.Slot
data modify storage cu:item simulate_container._value[] merge from storage cu:item simulate_container._current.value
execute in cu:data_temp run data modify block 0 1 0 Items set from storage cu:item simulate_container._value

data remove storage cu:item simulate_container._value
