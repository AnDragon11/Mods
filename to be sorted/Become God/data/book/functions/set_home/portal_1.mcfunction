execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Portal1"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Portal1"]}]
summon marker ~ ~ ~ {Tags:["Portal1"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Portal1"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Portal 1","bold":true}]