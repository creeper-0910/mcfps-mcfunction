summon area_effect_cloud ~ ~ ~ {Tags:["marker1","InitMarker"],Duration:103}
execute at @s as @e[sort=nearest,limit=1,tag=marker1] at @s run scoreboard players operation @s pid = @p playerid
tellraw @a[team=blue] [{"selector":"@s","color":"green"},{"text":"は「偵察」を使用しました","color":"white"}]
gamemode spectator @s
scoreboard players set @e[tag=InitMarker] timer 0
tag @e[tag=InitMarker] remove InitMarker