execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Mansion"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Mansion"]}]
summon marker ~ ~ ~ {Tags:["Mansion"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Mansion"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Mansion","bold":true}]