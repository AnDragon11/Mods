playsound minecraft:ui.button.click master @s
execute as @e[type=minecraft:marker,limit=1,nbt={Tags:["Biome2"]}] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,limit=1,nbt={Tags:["Biome2"]}]
summon marker ~ ~ ~ {Tags:["Biome2"]}
tp @e[type=minecraft:marker,limit=1,nbt={Tags:["Biome2"]}] ~ ~ ~ ~ ~
forceload add ~ ~
tellraw @s ["",{"text":"Waypoint Set to ","color":"#41FE00"},{"text":"Biome 2","bold":true}]