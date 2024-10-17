
kill @e[type=minecraft:armor_stand]
kill @e[type=minecraft:marker]

scoreboard objectives add variables dummy {"text":"Variables"}
scoreboard objectives setdisplay sidebar variables
scoreboard players set places_left variables 6000
scoreboard players set zero variables 0
#scoreboard players set marker_spawn variables 15

scoreboard objectives add superposition dummy {"text":"Superposition"}