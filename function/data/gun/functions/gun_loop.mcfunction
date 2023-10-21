execute as @a run scoreboard players operation @s LastSelecting = @s Selecting
execute as @a store result score @s Selecting run data get entity @s SelectedItemSlot

# get bullet
execute as @a[scores={shot_gun=1}] store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
execute as @a[scores={sneakcount=2}] store result score @s Bullets run data get entity @s SelectedItem.tag.Bullets
# can't shot gun
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=1..}] at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~
execute as @a[scores={shot_gun=1,Bullets2=1..,GunCoolTime=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] if predicate system:is_sneak at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~
execute as @a[scores={sneakcount=2,Bullets=1..,GunCoolTime=1..}] at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~

scoreboard players add @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{Gun:true}}}] GunRepeat 1
scoreboard players reset @a[scores={GunCoolTime=1..}] GunRepeat
scoreboard players reset @a[scores={Bullets=0}] GunRepeat
scoreboard players reset @a[scores={shot_gun=0}] GunRepeat

# gun
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run function gun:bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:2}}}] at @s run function gun:double_bullet_pos
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:3}}}] at @s run function gun:lmg_pos
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:5}}}] at @s run function gun:new_gun_pos
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:7}}}] at @s run function gun:sks_pos
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0, GunRepeat=1},nbt={SelectedItem:{tag:{CustomModelData:8}}}] at @s run function gun:ext_memoria_pos
execute as @a[scores={shot_gun=1,Bullets=1..,GunCoolTime=0, GunRepeat=3},nbt={SelectedItem:{tag:{CustomModelData:8}}}] at @s run function gun:ext_memoria_pos
# wallhacker
execute as @a[scores={shot_gun=1},nbt={SelectedItem:{tag:{CustomModelData:4}}}] store result score @s Bullets2 run data get entity @s SelectedItem.tag.Bullets2
execute as @a if entity @s[scores={shot_gun=1,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:4}}}] unless predicate system:is_sneak at @s run function gun:search_gun_pos
execute as @a[scores={shot_gun=1,Bullets2=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:4}}}] if predicate system:is_sneak at @s run function gun:search_gun_pos_sn
#execute as @a[scores={shot_gun=1,Bullets2=1..},nbt={SelectedItem:{tag:{CustomModelData:4}}}] if predicate system:is_sneak at @s run scoreboard players set @s noglow_sn 10
#execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] unless predicate system:is_sneak at @s run effect give @s speed 2 50 true
#execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] unless predicate system:is_sneak at @s run effect give @s jump_boost 2 3 true
#execute as @a[scores={shot_gun=1,Charge_Search=..4},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] if predicate system:is_sneak at @s run effect give @s instant_health 1 2 true
execute as @a[scores={shot_gun=1,Charge_Search=5..,GunCoolTime=0},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] if predicate system:is_sneak at @s run function gun:search_gun_ult
# sniper
execute as @a[scores={sneakcount=2,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:512}}}] at @s run function gun:sniper_pos
execute as @a[scores={sneakcount=2,Bullets=1..,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:513}}}] at @s run function gun:amr_pos

#Search
execute as @e[tag=ryujin] at @s run tp @s ^ ^ ^1.2
#execute as @e[tag=ryujin] at @s run effect give @e[distance=..2,limit=3,scores={Search=1..}] glowing 5 5
#execute as @e[tag=ryujin] at @s run damage @e[distance=..2,limit=1,type=!creeper,scores={Search=1..},tag=!ryujin] 4 magic
execute at @e[tag=ryujin] positioned ~-0.6 ~-0.1 ~ as @e[dx=0.1,dy=0.1,dz=0.2,tag=!test_bullet,type=#bullet_hit] unless score @s playerid = @e[tag=ryujin,sort=nearest,limit=1] pid run effect give @s minecraft:glowing 5 5 true
execute at @e[tag=ryujin] positioned ~-0.6 ~-0.1 ~ as @e[dx=0.1,dy=0.1,dz=0.2,tag=!test_bullet,type=#bullet_hit] unless score @s playerid = @e[tag=ryujin,sort=nearest,limit=1] pid run damage @s 4 magic
execute at @e[tag=ryujin] positioned ~-0.6 ~-0.1 ~ as @e[dx=0.1,dy=0.1,dz=0.2,tag=!test_bullet,type=#bullet_hit] unless score @s playerid = @e[tag=ryujin,sort=nearest,limit=1] pid at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1
execute at @e[tag=ryujin] positioned ~-0.6 ~-0.1 ~ as @e[dx=0.1,dy=0.1,dz=0.2,tag=!test_bullet,type=#bullet_hit] unless score @s playerid = @e[tag=ryujin,sort=nearest,limit=1] pid as @a at @s if score @s playerid = @e[tag=ryujin,sort=nearest,limit=1] pid run playsound block.glass.break player @s ~ ~ ~ 5
scoreboard players add @e[tag=ryujin] Search 1
kill @e[scores={Search=30..},tag=ryujin]
#Search_sn
execute as @e[tag=ryujin_sn] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=ryujin_sn] at @s run particle flash ~ ~ ~ 1 1 1 0 1
execute as @e[tag=ryujin_sn] at @s run scoreboard players add @s Search_sn 1
execute if entity @e[tag=ryujin_sn,scores={Search_sn=10}] as @e[distance=..5] at @s unless score @s playerid = @e[tag=ryujin_sn,sort=nearest,limit=1] pid run effect give @s blindness 4 10
execute as @e[scores={Search_sn=10..},tag=ryujin_sn] at @s run kill @s
#Search_ult
execute as @a if entity @s[scores={on=1..20},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run function gun:search_gun_pos
execute as @a if entity @s[scores={on=1..},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run scoreboard players add @s on 1
execute as @a if entity @s[scores={on=20..},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run scoreboard players reset @s on

# if bullet is 0, reload
execute as @a if entity @s[scores={shot_gun=1,Bullets=0,GunCoolTime=0}] run function gun:reload
execute as @a if entity @s[scores={shot_gun=1,Bullets2=0,GunCoolTime=0},nbt={SelectedItem:{tag:{CustomModelData:4}}}] run function gun:reload
execute as @a if entity @s[scores={sneakcount=2,Bullets=0,GunCoolTime=0},nbt={SelectedItem:{id:"minecraft:spyglass"}}] run function gun:reload

execute as @a if score @s TryReload1 matches 1.. run function gun:active_reload
execute as @a if score @s TryReload2 matches 1.. run function gun:active_reload2

#scoreboard players remove @a[scores={noglow_sn=1..}] noglow_sn 1
scoreboard players remove @a[scores={isjump=1..}] isjump 1
scoreboard players remove @a[scores={GunCoolTime=1..}] GunCoolTime 1
