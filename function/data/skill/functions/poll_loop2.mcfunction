particle minecraft:dust 0.5 0.8 0.9 1 ^ ^-1 ^0.5 0 0 0 0 1 normal
execute positioned ^ ^-1 ^0.5 run effect give @a[distance=..0.4] slowness 4 1 false
execute positioned ^ ^ ^0.5 unless entity @e[tag=test_poll,distance=..0.26] run function skill:poll_loop2
