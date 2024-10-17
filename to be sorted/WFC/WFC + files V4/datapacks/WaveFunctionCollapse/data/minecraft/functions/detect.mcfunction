#kill when it reaches 0
execute if score places_left variables <= zero variables run kill @e[type=minecraft:armor_stand]



#travel

execute as @r at @s unless entity @e[tag=selected] run data merge entity @e[type=armor_stand,limit=1,tag=!1,tag=!2,tag=!3,tag=!4,distance=..100] {Tags:["selected"],Glowing:1b,NoGravity:1b}


#check north
execute as @e[tag=selected] at @s run tp ~ ~ ~-16


execute as @e[tag=selected] at @s if entity @e[tag=3,distance=..1,tag=!selected] run tag @s add 1
execute as @e[tag=selected] at @s if entity @e[tag=!,distance=..1,tag=!selected] unless entity @e[tag=3,distance=..1,tag=!selected] run tag @s add 1f

#check south
execute as @e[tag=selected] at @s run tp ~ ~ ~32


execute as @e[tag=selected] at @s if entity @e[tag=1,distance=..1,tag=!selected] run tag @s add 3
execute as @e[tag=selected] at @s if entity @e[tag=!,distance=..1,tag=!selected] unless entity @e[tag=1,distance=..1,tag=!selected] run tag @s add 3f


#check east
execute as @e[tag=selected] at @s run tp ~16 ~ ~-16

execute as @e[tag=selected] at @s if entity @e[tag=4,distance=..1,tag=!selected] run tag @s add 2
execute as @e[tag=selected] at @s if entity @e[tag=!,distance=..1,tag=!selected] unless entity @e[tag=4,distance=..1,tag=!selected] run tag @s add 2f

#check west
execute as @e[tag=selected] at @s run tp ~-32 ~ ~


execute as @e[tag=selected] at @s if entity @e[tag=2,distance=..1,tag=!selected] run tag @s add 4
execute as @e[tag=selected] at @s if entity @e[tag=!,distance=..1,tag=!selected] unless entity @e[tag=2,distance=..1,tag=!selected] run tag @s add 4f

#return
execute as @e[tag=selected] at @s run tp ~16 ~ ~
 
#redirect
schedule function superposition 1t


execute if entity @e[tag=selected,    tag=!1,tag=!2,tag=!3,tag=!4] run say Error
