execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Point1"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Point1"]}]
summon marker ~ ~ ~ {Tags:["Point1"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Point1"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Point 1","bold":true}]