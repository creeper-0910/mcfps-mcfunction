worldborder set 192
bossbar set minecraft:timer name "Ring1 残り時間"
bossbar set minecraft:timer visible true
gamemode adventure @a
effect give @a minecraft:health_boost infinite 4
effect give @a instant_health 1 200
effect give @a saturation infinite 0 true
spreadplayers 0 0 190 150 true @a
function system:rand_player_id
function system:resetscore
execute as @a[team=White] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:16383998},Unbreakable:true}
execute as @a[team=Red] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:11546150},Unbreakable:true}
execute as @a[team=Blue] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:3949738},Unbreakable:true}
scoreboard players set @a kill 0
scoreboard objectives setdisplay sidebar kill
scoreboard players set #dummy success 0
scoreboard players set #dummy last_time 6000
schedule function system:ring_test_ring1 300s
