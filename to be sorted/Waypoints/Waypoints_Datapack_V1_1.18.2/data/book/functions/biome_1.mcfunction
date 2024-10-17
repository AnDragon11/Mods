playsound minecraft:ui.button.click master @s
execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Biome1"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Biome1"]}]
summon marker ~ ~ ~ {Tags:["Biome1"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Biome1"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Biome 1","bold":true}]