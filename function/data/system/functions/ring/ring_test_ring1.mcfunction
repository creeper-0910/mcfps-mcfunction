bossbar set minecraft:timer name "Ring2 残り時間"
scoreboard players set #dummy success 1
# 1000t -> 50s
scoreboard players set #dummy last_time 1000
# リング収縮開始 60-10
schedule function system:ring/ring_reduction_2 50s
# 収縮が終わったら次のリング
schedule function system:ring/ring_test_ring2 60s
