execute as @e[type=item] at @s store result score @s Age run data get entity @s Age
execute as @e[type=item] at @s if score Limit Age_limit <= @s Age run function minecraft:flash