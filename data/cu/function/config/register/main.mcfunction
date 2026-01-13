data modify storage cu:cache config_registry set value []

data modify storage cu:io config.register.Gatherer set value []
# Example template
# data modify storage cu:internal dummy set value {namespace:'',name:'',world_catalog:[],player_catalog:[]}
# data modify storage cu:internal dummy.world_catalog append value {id:'',name:'',description:'',specification:{type:'number_range',value:[],default:0,display_scale:1,display_base_offset:0,display_final_offset:0,description:''}}
# data modify storage cu:internal dummy.world_catalog append value {id:'',name:'',description:'',specification:{type:'selection',value:[],default:[],select_min:1,select_max:1,description:''}}
# data modify storage cu:internal dummy.world_catalog append value {id:'',name:'',description:'',group:[]}
# data modify storage cu:io config.register.Gatherer append from storage cu:internal dummy
function #cu:config/register
execute unless data storage cu:io config.register.Gatherer[0] run return run scoreboard players set #config.register.Result cu-io 0
function cu:config/register/_func/register

data remove storage cu:io config.register.Gatherer
data remove storage cu:internal config.register
scoreboard players reset #config.register.entry_resulting_flag cu-internal
scoreboard players reset #config.register.process_catalog.stop_recur cu-internal

return 1