execute as @e[nbt={Tags:["selected"]}] at @s align xz run place template dead_end_1 ~-7.5 ~ ~-7.5
scoreboard players remove places_left variables 1
execute as @e[nbt={Tags:["selected"]}] at @s run kill @s

function detect