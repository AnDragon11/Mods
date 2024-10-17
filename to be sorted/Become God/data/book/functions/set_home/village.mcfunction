execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Village"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Village"]}]
summon marker ~ ~ ~ {Tags:["Village"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Village"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Village","bold":true}]