#get coords
execute as @e[tag=pos1,limit=1] at @s store result score #1X coordinates run data get entity @s Pos[0]
execute as @e[tag=pos1,limit=1] at @s store result score #1Y coordinates run data get entity @s Pos[1]
execute as @e[tag=pos1,limit=1] at @s store result score #1Z coordinates run data get entity @s Pos[2]

execute as @e[tag=pos2,limit=1] at @s store result score #2X coordinates run data get entity @s Pos[0]
execute as @e[tag=pos2,limit=1] at @s store result score #2Y coordinates run data get entity @s Pos[1]
execute as @e[tag=pos2,limit=1] at @s store result score #2Z coordinates run data get entity @s Pos[2]


#difference
scoreboard players operation DX coordinates = #1X coordinates
scoreboard players operation DY coordinates = #1Y coordinates
scoreboard players operation DZ coordinates = #1Z coordinates

scoreboard players operation DX coordinates -= #2X coordinates
scoreboard players operation DY coordinates -= #2Y coordinates
scoreboard players operation DZ coordinates -= #2Z coordinates

#store
execute store result storage minecraft:coords coordinates.x int 1 run scoreboard players get DX coordinates
execute store result storage minecraft:coords coordinates.y int 1 run scoreboard players get DY coordinates
execute store result storage minecraft:coords coordinates.z int 1 run scoreboard players get DZ coordinates

execute store result storage minecraft:coords coordinates.2x int 1 run scoreboard players get #2X coordinates
execute store result storage minecraft:coords coordinates.2y int 1 run scoreboard players get #2Y coordinates
execute store result storage minecraft:coords coordinates.2z int 1 run scoreboard players get #2Z coordinates

execute store result storage minecraft:coords coordinates.1x int 1 run scoreboard players get #1X coordinates
execute store result storage minecraft:coords coordinates.1y int 1 run scoreboard players get #1Y coordinates
execute store result storage minecraft:coords coordinates.1z int 1 run scoreboard players get #1Z coordinates



