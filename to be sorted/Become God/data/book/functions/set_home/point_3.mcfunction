execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Point3"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Point3"]}]
summon marker ~ ~ ~ {Tags:["Point3"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Point3"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Point 3","bold":true}]