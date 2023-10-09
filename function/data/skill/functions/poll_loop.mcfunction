particle minecraft:instant_effect ^ ^1 ^0.5 0 0 0 0 3 normal
execute positioned ^ ^1 ^0.5 run effect give @a[distance=..0.4] slowness 4 1 true
execute positioned ^ ^ ^0.5 unless entity @e[tag=test_poll,distance=..0.26] run function skill:poll_loop
