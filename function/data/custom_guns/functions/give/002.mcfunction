###
# CustomModelData: モデル番号 全アイテムで被らないように
# Gun: 銃の場合true リロード処理に使う
# Bullet: 現在の残弾 基本的にはMaxBulletと同じ
# MaxBullet: リロード後の残弾 増やしたい場合はcustom_guns:reload_endなどで設定するべき
# Range: 射程(n/2ブロック) 例えば60なら30ブロック
# CoolTime: 一発撃った後次を撃つためのの必要時間
give @s minecraft:spyglass{display:{Name:'"002 [4]"'},CustomModelData:2,Gun:true,Bullet:4,MaxBullet:4,ReloadTime:60,Range:120,CoolTime:30}
