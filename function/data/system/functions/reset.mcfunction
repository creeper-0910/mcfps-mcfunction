# for gun
scoreboard players reset @a[scores={shot_gun=1..}] shot_gun
scoreboard players reset @a[scores={judgement_senak=1..}] judgement_senak
scoreboard players reset @a[scores={TryReload1=1..}] TryReload1

# for skill
scoreboard players reset @a[scores={testfor=1..}] testfor

# for respawn beacon
scoreboard players reset @a issneak
#execute as @a unless score @s issneak matches 1 run scoreboard players set @s sneakcount 0
execute as @a unless predicate system:is_sneak run scoreboard players reset @s sneakcount
scoreboard players reset @a success
