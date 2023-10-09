particle minecraft:instant_effect ^ ^ ^0.75 0 0 0 0 3 normal
effect give @a[distance=..0.4] slowness 4 1 true
execute positioned ^ ^ ^0.75 unless entity @e[tag=test_poll,distance=..0.7] run function skill:poll_loop
