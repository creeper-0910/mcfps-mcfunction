playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.25 1.8 0
playsound minecraft:block.fence_gate.open master @a ~ ~ ~ 0.5 1.5 0

# 実際の射撃処理
function custom_guns:fire

# 弾を減らす
function custom_guns:decrease_ammo

# 銃を撃ったらリロードは一旦停止
scoreboard players set @s ReloadTime 0
