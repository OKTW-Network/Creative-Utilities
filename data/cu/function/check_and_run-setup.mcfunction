scoreboard objectives add Meta dummy

execute unless score #cu$setup Meta matches 1 run function cu:setup

execute if score #cu$setup Meta matches 1 run function cu:initial
