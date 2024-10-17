
execute as @e[type=armor_stand] at @s if dimension minecraft:overworld run kill @s
execute as @e[type=marker] at @s if dimension minecraft:overworld run kill @s

scoreboard objectives add superposition dummy
scoreboard objectives add North dummy
scoreboard objectives add South dummy
scoreboard objectives add East dummy
scoreboard objectives add West dummy

scoreboard objectives add variables dummy
scoreboard objectives setdisplay sidebar variables
scoreboard players set places_left variables 2000
scoreboard players set zero variables 0