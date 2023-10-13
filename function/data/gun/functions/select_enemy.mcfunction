execute if entity @s[team=White] run tag @e[tag=!Shooter] add Enemy
execute if entity @s[team=Red] run tag @a[team=Blue] add Enemy
execute if entity @s[team=Red] run tag @e[type=!player] add Enemy
execute if entity @s[team=Blue] run tag @a[team=Red] add Enemy
execute if entity @s[team=Blue] run tag @e[type=!player] add Enemy
