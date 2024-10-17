
$execute as @e[tag=circle] at @s run fill ^ ^ ^ ^ ^ ^$(radius) $(block)
execute as @e[tag=circle] at @s run tp @s ~ ~ ~ ~4 ~

scoreboard players remove circle coordinates 1

execute if score circle coordinates matches 1.. run function tools:brush/circle_fill with storage minecraft:coords coordinates
