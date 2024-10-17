playsound minecraft:ui.button.click master @s
execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Monument"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Monument"]}]
summon marker ~ ~ ~ {Tags:["Monument"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Monument"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Monument","bold":true}]