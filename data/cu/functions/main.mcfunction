execute as @a[tag=!InitializedCUScore] run function cu:meta/scoreboard/set_player_score
execute as @a[tag=!InitializedCUBossBar] run function cu:meta/bossbar/set_player_visible

execute as @a[scores={useItemCount=1..}] run function cu:detector/use_item

execute if score #uips CreativeUtility matches 1 run function cu:use_item_per_sec/main
