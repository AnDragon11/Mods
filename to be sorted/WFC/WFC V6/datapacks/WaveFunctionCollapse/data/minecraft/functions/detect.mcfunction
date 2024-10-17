#stop when it reaches 0
execute if score places_left variables <= zero variables if dimension overworld as @e[type=minecraft:armor_stand] at @s run kill @s
execute if score places_left variables <= zero variables if dimension overworld as @e[type=minecraft:marker] at @s run kill @s


#asign armor stand
execute as @r at @s unless entity @e[tag=selected] if dimension minecraft:overworld run data merge entity @e[type=armor_stand,limit=1,distance=..150] {Tags:["selected"],Glowing:1b,NoGravity:1b}


##travel

#check north
execute as @e[tag=selected] at @s run tp ~ ~ ~-16
execute as @e[tag=selected] at @s if score @e[tag=!selected,distance=..1,limit=1] North matches 0.. store result score @s North run data get entity @e[tag=!selected,distance=..1,limit=1] data.South

#check south
execute as @e[tag=selected] at @s run tp ~ ~ ~32
execute as @e[tag=selected] at @s if score @e[tag=!selected,distance=..1,limit=1] South matches 0.. store result score @s South run data get entity @e[tag=!selected,distance=..1,limit=1] data.North

#check east
execute as @e[tag=selected] at @s run tp ~16 ~ ~-16
execute as @e[tag=selected] at @s if score @e[tag=!selected,distance=..1,limit=1] East matches 0.. store result score @s East run data get entity @e[tag=!selected,distance=..1,limit=1] data.West

#check west
execute as @e[tag=selected] at @s run tp ~-32 ~ ~
execute as @e[tag=selected] at @s if score @e[tag=!selected,distance=..1,limit=1] West matches 0.. store result score @s West run data get entity @e[tag=!selected,distance=..1,limit=1] data.East

#return
execute as @e[tag=selected] at @s run tp ~16 ~ ~


#redirect

execute if entity @e[tag=selected] run schedule function superposition 1t

