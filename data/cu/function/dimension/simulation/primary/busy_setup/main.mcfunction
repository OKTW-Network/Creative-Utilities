execute unless score $dimension/simulation/primary/busy_setup cu-alert matches 0.. run scoreboard players set $dimension/simulation/primary/busy_setup cu-alert 0
scoreboard players add $dimension/simulation/primary/busy_setup cu-alert 1
execute in cu:simulation positioned 0 0 0 unless function cu:dimension/simulation/primary/busy_setup/_func run return run schedule function cu:dimension/simulation/primary/busy_setup/main 1t replace

scoreboard players set #1 temp -1
scoreboard players operation $dimension/simulation/primary/busy_setup cu-alert *= #1 temp
