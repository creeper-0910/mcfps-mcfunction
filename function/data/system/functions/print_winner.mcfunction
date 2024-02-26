scoreboard players set @a Rank 1
execute as @a at @a if score @s kill < @p kill run scoreboard players add @s Rank 1
title set title [{"text":"勝者は"},{"selector":"@a[scores={Rank=1}]"},{"text":"でした!"}]
