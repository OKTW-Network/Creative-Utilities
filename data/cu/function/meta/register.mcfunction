scoreboard objectives add temp dummy
scoreboard objectives add Config dummy

scoreboard objectives add cu dummy "@cu"
scoreboard objectives add cu-io dummy
scoreboard objectives add cu-internal dummy

scoreboard objectives add cu.meta.version.x dummy
scoreboard objectives add cu.meta.version.y dummy
scoreboard objectives add cu.meta.version.z dummy
scoreboard objectives add cu.trigger.jumpCounter minecraft.custom:minecraft.jump "@cu+trigger Jump counter"
scoreboard objectives add cu.trigger.useItemCounter minecraft.used:minecraft.carrot_on_a_stick "@cu+trigger Use item counter"
scoreboard objectives add cu.trigger.useItemRecord dummy "@cu+trigger Use Item record"
scoreboard objectives add cu.trigger.usingShieldCounter dummy "@cu+trigger Using Shield counter"
scoreboard objectives add cu.trigger.leaveGameCounter minecraft.custom:minecraft.leave_game "@cu+trigger Leave game counter"
scoreboard objectives add cu.trigger.moving.walk minecraft.custom:minecraft.walk_one_cm "@cu+trigger Moving walk"
scoreboard objectives add cu.trigger.moving.walkOnWater minecraft.custom:minecraft.walk_on_water_one_cm "@cu+trigger Moving walk on water"
scoreboard objectives add cu.trigger.moving.walkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm "@cu+trigger Moving walk under water"
scoreboard objectives add cu.trigger.moving.crouch minecraft.custom:minecraft.crouch_one_cm "@cu+trigger Moving crouch"
scoreboard objectives add cu.trigger.moving.sprint minecraft.custom:minecraft.sprint_one_cm "@cu+trigger Moving sprint"
scoreboard objectives add cu.trigger.moving.swim minecraft.custom:minecraft.swim_one_cm "@cu+trigger Moving swim"
scoreboard objectives add cu.trigger.moving.climb minecraft.custom:minecraft.climb_one_cm "@cu+trigger Moving climb"
scoreboard objectives add cu.trigger.moving.fly minecraft.custom:minecraft.fly_one_cm "@cu+trigger Moving fly"
scoreboard objectives add cu.trigger.moving.aviate minecraft.custom:minecraft.aviate_one_cm "@cu+trigger Moving aviate"
scoreboard objectives add cu.trigger.moving.ridePig minecraft.custom:minecraft.pig_one_cm "@cu+trigger Moving pig"
scoreboard objectives add cu.trigger.moving.rideHorse minecraft.custom:minecraft.horse_one_cm "@cu+trigger Moving horse"
scoreboard objectives add cu.trigger.moving.rideStrider minecraft.custom:minecraft.strider_one_cm "@cu+trigger Moving strider"
scoreboard objectives add cu.trigger.moving.rideBoat minecraft.custom:minecraft.boat_one_cm "@cu+trigger Moving boat"
scoreboard objectives add cu.trigger.moving.rideMinecart minecraft.custom:minecraft.minecart_one_cm "@cu+trigger Moving minecart"
scoreboard objectives add cu.trigger.moveToBlock.lastBlockX dummy "@cu+trigger Move to block last blockX"
scoreboard objectives add cu.trigger.moveToBlock.lastBlockY dummy "@cu+trigger Move to block last blockY"
scoreboard objectives add cu.trigger.moveToBlock.lastBlockZ dummy "@cu+trigger Move to block last blockZ"
scoreboard objectives add cu.trigger.lastHealth dummy "@cu+trigger Health last amount"
scoreboard objectives add cu.trigger.lastMaxHealth dummy "@cu+trigger Max health last amount"

# data get storage cu:io
data remove storage cu:internal {}
data remove storage cu:static {}
