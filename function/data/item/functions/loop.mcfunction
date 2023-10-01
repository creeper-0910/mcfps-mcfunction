execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:luck",amplifier:116b}]}] run summon creeper ~ ~ ~ {Fuse:1s,ignited:true}
execute at @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:unluck",amplifier:116b}]}] run summon creeper ~ ~ ~ {Fuse:1s,ignited:true,powered:1}
kill @e[type=minecraft:area_effect_cloud,tag=]
