###
# CustomModelData: モデル番号 全アイテムで被らないように
# Gun: 銃の場合true リロード処理に使う
# Bullet: 現在の残弾 基本的にはMaxBulletと同じ
# MaxBullet: リロード後の残弾 増やしたい場合はcustom_guns:reload_endなどで設定するべき
# Range: 射程(n/2ブロック) 例えば60なら30ブロック
# CoolTime: 一発撃った後次を撃つためのの必要時間
give @s minecraft:crossbow{display:{Name:'"SKS   [30]"'},CustomModelData:3,Charged:true,Gun:true,Bullet:30,MaxBullet:30,ReloadTime:30,Range:120,CoolTime:0,Type:"AR"}
