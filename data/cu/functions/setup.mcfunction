gamerule maxCommandChainLength 2147483647

scoreboard objectives add Meta dummy
scoreboard objectives add Config dummy

datapack disable "file/Creative-utilities"
datapack enable "file/Creative-utilities" after "file/Math-integration"

scoreboard players set #cu$setup Meta 1
