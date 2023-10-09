particle minecraft:instant_effect ^ ^1 ^0.75 0 0 0 0 3 normal
execute positioned ^ ^ ^0.75 unless entity @e[tag=test_poll,distance=..0.5] run function skill:poll_loop
