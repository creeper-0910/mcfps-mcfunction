playsound minecraft:block.stone_button.click_on master @s ~ ~ ~

# もしリロードをまだしてなければリロードを開始してみる
execute if score @s ReloadTime matches 0 run function custom_guns:reload_start
