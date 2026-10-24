forceload add 0 0
execute unless function cu:dimension/simulation/primary/check_forceloaded run return fail

# y: 0 ~ 7
fill 0 0 0 15 0 15 minecraft:bedrock replace
function cu:dimension/simulation/primary/container_block/reset
function cu:dimension/simulation/primary/sign_block/reset
function cu:dimension/simulation/primary/block_testing/reset

# y: 8 ~ 15
fill 0 8 0 15 8 15 minecraft:bedrock replace

return 1
