#tellraw @a {"selector":"@s"}
# 使用者に当たったら無視する
execute store success score @s Temp if score @s playerid = @e[type=!marker,type=!ender_dragon,dx=0.2,dy=0.2,dz=0.2,limit=1] playerid

# 実際にダメージを与える
execute at @s run damage @e[type=!marker,type=!ender_dragon,dx=0.2,dy=0.2,dz=0.2,limit=1] 3 arrow at ~ ~ ~

# もしちゃんとダメージを与えたら消す
kill @s[scores={Temp=0}]
