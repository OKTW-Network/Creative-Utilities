# Creative utilities
Useful utility things.

## Feature

### Use item detection

A carrot on a stick based use item(right click) detecter.  
Trigger the functions by adding it in the `minecraft\tags\functions\use_item.json` for your datapacks.

### Use item per second

Survey the use item speed of each player.  
`/function cu:use_item_per_sec/start` start the survey.  
`/function cu:use_item_per_sec/stop` stop the survey.

### Hitbox lib

Find and export the hitbox range into values.

### Mini UUID

Compress UUID so that it can be accommodated by int type, for example: scoreboard objective.  
`/function cu:mini_uuid/generate` generate a mini UUID.  
Check out the storages `cu:resources miniUUID.Most` & `cu:resources miniUUID.Least` for result.

### Version

Compare and build version into a string.  
See `..\cu\functions\version_check` for more infomation.

### Predicate

`minecraft:sneaking`  
`minecraft:on_ground`  
`minecraft:sleeping` true when the entity completely asleep.  
`minecraft:awake` true when the entity completely awake.  
`minecraft:hand_main-empty`  
`minecraft:hand_off-empty`  
`minecraft:head-empty`

## Required dependency

* [Math integration](https://github.com/OKTW-Network/Math-integration)

## Compatibility information

### Namespace

* cu

### Scoreboard objective

* versionCU
* Version
* Meta
* Config
* CreativeUtility
* useItemCount
* tickCounter
* UIPS
* UIPSCount

### Tags

* InitializedCUScore
* InitializedCUBossBar
