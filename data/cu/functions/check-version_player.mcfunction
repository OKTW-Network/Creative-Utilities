function cu:version

scoreboard players operation #new_x.*.*-* Version = #cu$currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #cu$currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #cu$currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #cu$currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionCUX
scoreboard players operation #currently_*.x.*-* Version = @s VersionCUY
scoreboard players operation #currently_*.*.x-* Version = @s VersionCUZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionCUA
function cu:version/check

scoreboard players operation @s VersionCUX = #cu$currently_version_x.*.*-* Meta
scoreboard players operation @s VersionCUY = #cu$currently_version_*.x.*-* Meta
scoreboard players operation @s VersionCUZ = #cu$currently_version_*.*.x-* Meta
scoreboard players operation @s VersionCUA = #cu$currently_version_*.*.*-x Meta
