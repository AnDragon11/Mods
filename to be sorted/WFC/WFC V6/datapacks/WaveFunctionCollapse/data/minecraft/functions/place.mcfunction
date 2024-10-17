##place

#1s
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 0,East: 0,West: 0, Superposition: 1}}] at @s run place template n1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 0,East: 1,West: 0, Superposition: 1}}] at @s run place template e1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 1,East: 0,West: 0, Superposition: 1}}] at @s run place template s1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 0,East: 0,West: 1, Superposition: 1}}] at @s run place template w1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 0,East: 1,West: 0, Superposition: 1}}] at @s run place template n1e1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 1,East: 0,West: 0, Superposition: 1}}] at @s run place template n1s1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 0,East: 0,West: 1, Superposition: 1}}] at @s run place template n1w1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 1,East: 1,West: 0, Superposition: 1}}] at @s run place template e1s1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 0,East: 1,West: 1, Superposition: 1}}] at @s run place template e1w1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 1,East: 0,West: 1, Superposition: 1}}] at @s run place template s1w1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 1,East: 1,West: 0, Superposition: 1}}] at @s run place template n1e1s1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 0,East: 1,West: 1, Superposition: 1}}] at @s run place template n1e1w1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 1,East: 0,West: 1, Superposition: 1}}] at @s run place template n1s1w1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 1,East: 1,West: 1, Superposition: 1}}] at @s run place template e1s1w1 ~-7.5 ~ ~-7.5
execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 1,East: 1,West: 1, Superposition: 1}}] at @s run place template n1e1s1w1 ~-7.5 ~ ~-7.5

#2s
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 0,East: 0,West: 0, Superposition: 1}}] at @s run place template n2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 0,East: 2,West: 0, Superposition: 1}}] at @s run place template e2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 2,East: 0,West: 0, Superposition: 1}}] at @s run place template s2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 0,East: 0,West: 2, Superposition: 1}}] at @s run place template w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 0,East: 2,West: 0, Superposition: 1}}] at @s run place template n2e2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 2,East: 0,West: 0, Superposition: 1}}] at @s run place template n2s2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 0,East: 0,West: 2, Superposition: 1}}] at @s run place template n2w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 2,East: 2,West: 0, Superposition: 1}}] at @s run place template e2s2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 0,East: 2,West: 2, Superposition: 1}}] at @s run place template e2w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 2,East: 0,West: 2, Superposition: 1}}] at @s run place template s2w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 2,East: 2,West: 0, Superposition: 1}}] at @s run place template n2e2s2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 0,East: 2,West: 2, Superposition: 1}}] at @s run place template n2e2w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 2,East: 0,West: 2, Superposition: 1}}] at @s run place template n2s2w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 2,East: 2,West: 2, Superposition: 1}}] at @s run place template e2s2w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 2,South: 2,East: 2,West: 2, Superposition: 1}}] at @s run place template n2e2s2w2 ~-7.5 ~ ~-7.5

#1-2s
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 1,East: 2,West: 2, Superposition: 1}}] at @s run place template n1e2s1w2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 1,South: 2,East: 0,West: 0, Superposition: 1}}] at @s run place template n1s2 ~-7.5 ~ ~-7.5
#execute as @e[tag=collapsed] if entity @s[nbt={data:{North: 0,South: 0,East: 1,West: 2, Superposition: 1}}] at @s run place template e1w2 ~-7.5 ~ ~-7.5


#asign score to placed smarkers
execute as @e[type=marker,tag=!collapsed] at @s store result score @s East run data get entity @s data.East
execute as @e[type=marker,tag=!collapsed] at @s store result score @s West run data get entity @s data.West
execute as @e[type=marker,tag=!collapsed] at @s store result score @s South run data get entity @s data.South
execute as @e[type=marker,tag=!collapsed] at @s store result score @s North run data get entity @s data.North


##repopulate

#go north
execute as @e[tag=selected] at @s run tp ~ ~ ~-16
execute as @e[tag=selected] at @s if score @e[tag=collapsed,limit=1] North matches 1.. unless entity @e[tag=!selected,distance=..2] run summon minecraft:armor_stand ~ ~ ~ 

#go south
execute as @e[tag=selected] at @s run tp ~ ~ ~32
execute as @e[tag=selected] at @s if score @e[tag=collapsed,limit=1] South matches 1.. unless entity @e[tag=!selected,distance=..2] run summon minecraft:armor_stand ~ ~ ~ 

#go east
execute as @e[tag=selected] at @s run tp ~16 ~ ~-16
execute as @e[tag=selected] at @s if score @e[tag=collapsed,limit=1] East matches 1.. unless entity @e[tag=!selected,distance=..2] run summon minecraft:armor_stand ~ ~ ~ 

#go west
execute as @e[tag=selected] at @s run tp ~-32 ~ ~
execute as @e[tag=selected] at @s if score @e[tag=collapsed,limit=1] West matches 1.. unless entity @e[tag=!selected,distance=..2] run summon minecraft:armor_stand ~ ~ ~ 


#die
scoreboard players remove places_left variables 1
execute as @e[tag=selected] at @s if dimension minecraft:overworld run kill @s
execute as @e[tag=collapsed] at @s if dimension minecraft:overworld run kill @s

function detect
