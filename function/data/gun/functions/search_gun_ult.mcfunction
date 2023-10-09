execute as @a if entity @s[scores={Charge_Search=5..},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run scoreboard players reset @s Charge_Search
execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run effect give @s speed 10 5 true
execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run effect give @s jump_boost 10 3 true
execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run effect give @s resistance 10 1 true
execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run scoreboard objectives add on dummy
execute as @a if entity @s[scores={shot_gun=1},nbt={Inventory:[{Slot:-106b,Count:1b,tag:{CustomModelData:4}}]}] at @s run scoreboard players add @s on 1