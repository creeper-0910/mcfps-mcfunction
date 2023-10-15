worldborder set 192
bossbar set minecraft:timer name "Ring1 残り時間"
gamemode adventure @a
effect give @a minecraft:health_boost 10 4
effect give @a instant_health 1 200
spreadplayers 0 0 190 150 true @a
function system:rand_player_id
function system:resetscore
scoreboard players set @a kill 0
scoreboard objectives setdisplay sidebar kill
scoreboard players set #dummy success 0
scoreboard players set #dummy last_time 6000
schedule function system:ring_test_ring1 300s
