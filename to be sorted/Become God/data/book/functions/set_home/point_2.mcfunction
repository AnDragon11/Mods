execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Point2"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Point2"]}]
summon marker ~ ~ ~ {Tags:["Point2"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Point2"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Point 2","bold":true}]