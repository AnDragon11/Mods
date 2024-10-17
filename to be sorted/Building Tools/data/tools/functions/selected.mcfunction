summon block_display ~ ~ ~ {teleport_duration:1,Glowing:1b,view_range:50f,Tags:["selected"],brightness:{sky:10,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.98f,.98f,.98f]},block_state:{Name:"minecraft:light_gray_stained_glass"}}
execute as @e[tag=selected,limit=1,sort=nearest] unless score @s id = @p id at @s run scoreboard players operation @s id = @p id


