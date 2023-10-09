particle minecraft:dust 0.5 0.8 0.9 1 ^ ^-1 ^0.8 0 0 0 0 1 normal
execute positioned ^ ^-1 ^0.8 run effect give @a[distance=..0.7] slowness 4 2 true
execute positioned ^ ^ ^0.8 unless entity @e[tag=test_poll,distance=..0.41] run function skill:poll_loop2
