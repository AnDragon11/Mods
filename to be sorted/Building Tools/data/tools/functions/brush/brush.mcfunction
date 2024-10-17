
execute align xyz run summon minecraft:marker ~.5 ~ ~.5 {Tags:["circle"]}

scoreboard players set circle coordinates 90
execute as @e[tag=circle] at @s run function tools:brush/circle_fill with storage minecraft:coords coordinates

kill @e[tag=circle]
