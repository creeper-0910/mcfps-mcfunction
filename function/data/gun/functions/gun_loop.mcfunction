execute as @a[scores={shot_gun=1}] store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @a[scores={shot_gun=1},nbt={SelectedItem:{tag:{CustomModelData:4}}}] store result score @s Bullets2 run data get entity @s SelectedItem.tag.Bullets2
execute as @a[scores={sneakcount=2}] store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run function gun:bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:2}}}] at @s run function gun:double_bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:3}}}] at @s run function gun:lmg_pos
#execute as @a if entity @s[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] unless score @s judgement_senak matches 1 at @s run function gun:search_gun_pos
execute as @a if entity @s[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] unless predicate system:is_sneak at @s run function gun:search_gun_pos
#execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] if score @s judgement_senak matches 1 at @s run function gun:search_gun_pos_sn
execute as @a[scores={shot_gun=1,Bullets2=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] if predicate system:is_sneak at @s run function gun:search_gun_pos_sn
#execute as @a[scores={shot_gun=1,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] if score @s judgement_senak matches 1 at @s run scoreboard players set @s noglow_sn 2
execute as @a[scores={shot_gun=1,Bullets2=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] if predicate system:is_sneak at @s run scoreboard players set @s noglow_sn 31
execute as @a[scores={sneakcount=2,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:512}}}] at @s run function gun:sniper_pos
execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] unless predicate system:is_sneak at @s run effect give @s speed 2 50 true
execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] unless predicate system:is_sneak at @s run effect give @s jump_boost 2 3 true
execute as @a[scores={shot_gun=1,Charge_Search=..4},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] if predicate system:is_sneak at @s run effect give @s instant_health 1 2 true
execute as @a[scores={shot_gun=1,Charge_Search=5..},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] if predicate system:is_sneak at @s run function gun:search_gun_ult
execute as @a[scores={sneakcount=2,Bullets=1..},nbt={SelectedItem:{tag:{CustomModelData:513}}}] at @s run function gun:amr_pos

#Search
execute as @e[tag=ryujin] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=ryujin] at @s run effect give @e[distance=..2,limit=3,scores={Search=1..}] glowing 5 5
execute as @e[tag=ryujin] at @s run damage @e[distance=..2,limit=1,type=!creeper,scores={Search=1..}] 10 magic
execute as @e[tag=ryujin] at @s run scoreboard players add @s Search 1
execute as @e[scores={Search=30..},tag=ryujin] at @s run kill @s
execute as @e[tag=ryujin] at @s run playsound entity.experience_orb.pickup player @a[distance=..2,limit=1,scores={Search=1..}] ~ ~ ~ 5
#Search_sn
execute as @e[tag=ryujin_sn] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=ryujin_sn] at @s run particle flash ~ ~ ~ 1 1 1 0 1
execute as @e[tag=ryujin_sn] at @s run scoreboard players add @s Search_sn 1
execute as @e[tag=ryujin_sn,scores={Search_sn=10}] at @s run effect give @e[distance=..5,limit=3,scores={noglow_sn=0}] blindness 4 10
execute as @e[scores={Search_sn=10..},tag=ryujin_sn] at @s run kill @s
#Search_ult
execute as @a if entity @s[scores={on=1..20},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run function gun:search_gun_pos
execute as @a if entity @s[scores={on=1..},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run scoreboard players add @s on 1
execute as @a if entity @s[scores={on=20..},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run scoreboard players reset @s on

execute as @a if score @s TryReload1 matches 1.. run function gun:active_reload
execute as @a if score @s TryReload2 matches 1.. run function gun:active_reload2

scoreboard players remove @a[scores={noglow_sn=1..}] noglow_sn 1
scoreboard players remove @a[scores={isjump=1..}] isjump 1
