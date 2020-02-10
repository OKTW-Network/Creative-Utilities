scoreboard players set #none Version 0
scoreboard players set #check_none Version 0
scoreboard players set #change Version 0
scoreboard players set #check_new Version 0
scoreboard players set #higher Version 0
scoreboard players set #lower Version 0

function cu:version/absolute

execute store success score #check_none Version if score #currently_x.*.*-* Version matches 0
execute if score #check_none Version matches 1 store success score #check_none Version if score #currently_*.x.*-* Version matches 0
execute if score #check_none Version matches 1 store success score #check_none Version if score #currently_*.*.x-* Version matches 0
execute if score #check_none Version matches 1 store success score #check_none Version if score #currently_*.*.*-x Version matches 0
execute if score #check_none Version matches 1 run scoreboard players set #none Version 1

execute if score #none Version matches 0 unless score #new_x.*.*-* Version = #currently_x.*.*-* Version run scoreboard players set #change Version 1
execute if score #none Version matches 0 unless score #new_*.x.*-* Version = #currently_*.x.*-* Version run scoreboard players set #change Version 1
execute if score #none Version matches 0 unless score #new_*.*.x-* Version = #currently_*.*.x-* Version run scoreboard players set #change Version 1
execute if score #none Version matches 0 unless score #new_*.*.*-x Version = #currently_*.*.*-x Version run scoreboard players set #change Version 1

execute if score #change Version matches 1 store success score #check_new Version if score #new_x.*.*-* Version > #currently_x.*.*-* Version run scoreboard players set #higher Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_x.*.*-* Version < #currently_x.*.*-* Version run scoreboard players set #lower Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.x.*-* Version > #currently_*.x.*-* Version run scoreboard players set #higher Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.x.*-* Version < #currently_*.x.*-* Version run scoreboard players set #lower Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.*.x-* Version > #currently_*.*.x-* Version run scoreboard players set #higher Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.*.x-* Version < #currently_*.*.x-* Version run scoreboard players set #lower Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.*.*-x Version > #currently_*.*.*-x Version if score #currently_*.*.*-x Version matches 1.. run scoreboard players set #higher Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.*.*-x Version < #currently_*.*.*-x Version if score #new_*.*.*-x Version matches 1.. run scoreboard players set #lower Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.*.*-x Version < #currently_*.*.*-x Version if score #new_*.*.*-x Version matches 0 run scoreboard players set #higher Version 1
execute if score #change Version matches 1 if score #check_new Version matches 0 store success score #check_new Version if score #new_*.*.*-x Version > #currently_*.*.*-x Version if score #currently_*.*.*-x Version matches 0 run scoreboard players set #lower Version 1
