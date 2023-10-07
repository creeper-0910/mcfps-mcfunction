# リスポーン処理
 
# アマスタの位置の近くに居るか&シフトしているか
execute as @a at @s unless entity @e[tag=inRespawnArea,distance=..2] run scoreboard players reset @s sneak
# リスポーンアイテムからプレイヤー取得、TP
execute as @a at @s if entity @e[tag=inRespawnArea,distance=..2] store result score @s success run clear @s netherite_upgrade_smithing_template 0
execute as @a at @s if entity @e[tag=inRespawnArea,distance=..2] store result score #dummy pid run data get entity @s[scores={success=1,sneak=100..}] Inventory[{id:"minecraft:netherite_upgrade_smithing_template"}].tag.pid
execute as @a at @s if entity @e[tag=inRespawnArea,distance=..2] at @e[tag=inRespawnArea,sort=nearest,limit=1] as @a if score @s[gamemode=spectator] playerid = #dummy pid run tag @s add Respawning
execute as @a at @s if entity @e[tag=inRespawnArea,distance=..2] run playsound minecraft:block.bamboo.place master @s[scores={success=1..,issneak=1}] ~ ~ ~ 5 1 1
execute as @a unless score @s issneak matches 1 run scoreboard players set @s sneakcount 0
scoreboard players reset @a issneak
# ゲームモードを変更して落下速度低下を付与
execute as @a at @s[scores={success=1..,sneak=100..}] if entity @e[tag=inRespawnArea,distance=..2] at @e[tag=inRespawnArea,sort=nearest,limit=1] as @a[tag=Respawning] run tp @s ~ ~50 ~
execute as @a[tag=Respawning] at @e[tag=inRespawnArea,sort=nearest,limit=1] run effect give @s slow_falling 7 1 true
execute as @a[tag=Respawning] at @e[tag=inRespawnArea,sort=nearest,limit=1] run gamemode survival @s
execute as @a[tag=Respawning] at @e[tag=inRespawnArea,sort=nearest,limit=1] run tag @s remove Respawning
clear @a[scores={success=1..,sneak=100..}] netherite_upgrade_smithing_template 255
scoreboard players reset @a success