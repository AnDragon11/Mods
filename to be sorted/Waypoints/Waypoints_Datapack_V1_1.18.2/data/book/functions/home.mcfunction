playsound minecraft:ui.button.click master @s
execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Home"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Home"]}]
summon marker ~ ~ ~ {Tags:["Home"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Home"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Home","bold":true}]