
#place
execute as @e[nbt={Tags:["selected"]}] at @s align xz run place template road_1_2_3 ~-7.5 ~ ~-7.5


#repopulate

#go north
execute as @e[tag=selected] at @s run tp ~ ~ ~-16
execute as @e[tag=selected] at @s unless entity @e[distance=..1,tag=!selected] run summon minecraft:armor_stand ~ ~ ~

#go south
execute as @e[tag=selected] at @s run tp ~ ~ ~32
execute as @e[tag=selected] at @s unless entity @e[distance=..1,tag=!selected] run summon minecraft:armor_stand ~ ~ ~

#go east
execute as @e[tag=selected] at @s run tp ~16 ~ ~-16
execute as @e[tag=selected] at @s unless entity @e[distance=..1,tag=!selected] run summon minecraft:armor_stand ~ ~ ~

#go west
execute as @e[tag=selected] at @s run tp ~-32 ~ ~


#die
scoreboard players remove places_left variables 1
execute as @e[tag=selected] at @s run kill @s

function detect