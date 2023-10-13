# for gun
scoreboard players reset @a[scores={shot_gun=1..}] shot_gun
scoreboard players reset @a[scores={TryReload1=1..}] TryReload1
scoreboard players reset @a[scores={TryReload2=1..}] TryReload2

# for skill
scoreboard players reset @a[scores={testfor=1..}] testfor

# for respawn beacon
execute as @a unless predicate system:is_sneak run scoreboard players reset @s sneakcount
scoreboard players reset @a success
