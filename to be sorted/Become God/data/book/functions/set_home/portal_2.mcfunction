execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Portal2"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Portal2"]}]
summon marker ~ ~ ~ {Tags:["Portal2"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Portal2"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Portal 2","bold":true}]