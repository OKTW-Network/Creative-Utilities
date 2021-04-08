function cu:check-dependency

execute if score #cu$dependency_missing Meta matches 0 if score #math$setup Meta matches 1 unless score #cu$setup Meta matches 1 run function cu:setup
