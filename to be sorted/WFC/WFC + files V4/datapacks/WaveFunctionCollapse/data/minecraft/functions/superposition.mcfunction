#summons 15 markers and tags them all with different IDs
#The scoreboard is for a more controlled randomness (wip)

execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["1"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=!2,tag=!3,tag=!4] superposition 1
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["2"]}
scoreboard players set @e[type=marker,limit=1,tag=!1,tag=2,tag=!3,tag=!4] superposition 2
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["3"]}
scoreboard players set @e[type=marker,limit=1,tag=!1,tag=!2,tag=3,tag=!4] superposition 3
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["4"]}
scoreboard players set @e[type=marker,limit=1,tag=!1,tag=!2,tag=!3,tag=4] superposition 4
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["1","2"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=2,tag=!3,tag=!4] superposition 5
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["1","3"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=!2,tag=3,tag=!4] superposition 6
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["1","4"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=2,tag=!3,tag=4] superposition 7
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["2","3"]}
scoreboard players set @e[type=marker,limit=1,tag=!1,tag=2,tag=3,tag=!4] superposition 8
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["2","4"]}
scoreboard players set @e[type=marker,limit=1,tag=!1,tag=2,tag=!3,tag=4] superposition 9
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["3","4"]}
scoreboard players set @e[type=marker,limit=1,tag=!1,tag=!2,tag=3,tag=4] superposition 10
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["2","4","1"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=2,tag=!3,tag=4] superposition 11
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["2","4","3"]}
scoreboard players set @e[type=marker,limit=1,tag=!1,tag=2,tag=3,tag=4] superposition 12
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["1","2","3"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=2,tag=3,tag=!4] superposition 13
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["1","3","4"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=!2,tag=3,tag=4] superposition 14
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {Tags:["2","4","1","3"]}
scoreboard players set @e[type=marker,limit=1,tag=1,tag=2,tag=3,tag=4] superposition 15

#kills all the non suitable markers
execute if entity @e[tag=selected,tag=1] run kill @e[type=marker,tag=!1]
execute if entity @e[tag=selected,tag=1f] run kill @e[type=marker,tag=1]
execute if entity @e[tag=selected,tag=2] run kill @e[type=marker,tag=!2]
execute if entity @e[tag=selected,tag=2f] run kill @e[type=marker,tag=2]
execute if entity @e[tag=selected,tag=3] run kill @e[type=marker,tag=!3]
execute if entity @e[tag=selected,tag=3f] run kill @e[type=marker,tag=3]
execute if entity @e[tag=selected,tag=4] run kill @e[type=marker,tag=!4]
execute if entity @e[tag=selected,tag=4f] run kill @e[type=marker,tag=4]


#collapse!
execute as @e[type=marker,sort=random,limit=1] at @s run tag @s add collapsed
kill @e[type=marker,tag=!collapsed]

scoreboard players list @e[tag=collapsed,limit=1]

#find the collapsed marker and place a tile

execute as @e[tag=collapsed] if entity @s[tag=1,tag=!2,tag=!3,tag=!4] at @s run function place/1
execute as @e[tag=collapsed] if entity @s[tag=!1,tag=2,tag=!3,tag=!4] at @s run function place/2
execute as @e[tag=collapsed] if entity @s[tag=!1,tag=!2,tag=3,tag=!4] at @s run function place/3
execute as @e[tag=collapsed] if entity @s[tag=!1,tag=!2,tag=!3,tag=4] at @s run function place/4
execute as @e[tag=collapsed] if entity @s[tag=1,tag=2,tag=!3,tag=!4] at @s run function place/1_2
execute as @e[tag=collapsed] if entity @s[tag=1,tag=!2,tag=3,tag=!4] at @s run function place/1_3
execute as @e[tag=collapsed] if entity @s[tag=1,tag=!2,tag=!3,tag=4] at @s run function place/1_4
execute as @e[tag=collapsed] if entity @s[tag=!1,tag=2,tag=3,tag=!4] at @s run function place/2_3
execute as @e[tag=collapsed] if entity @s[tag=!1,tag=2,tag=!3,tag=4] at @s run function place/2_4
execute as @e[tag=collapsed] if entity @s[tag=!1,tag=!2,tag=3,tag=4] at @s run function place/3_4
execute as @e[tag=collapsed] if entity @s[tag=1,tag=2,tag=3,tag=!4] at @s run function place/1_2_3
execute as @e[tag=collapsed] if entity @s[tag=1,tag=2,tag=!3,tag=4] at @s run function place/1_2_4
execute as @e[tag=collapsed] if entity @s[tag=1,tag=!2,tag=3,tag=4] at @s run function place/1_3_4
execute as @e[tag=collapsed] if entity @s[tag=!1,tag=2,tag=3,tag=4] at @s run function place/2_3_4
execute as @e[tag=collapsed] if entity @s[tag=1,tag=2,tag=3,tag=4] at @s run function place/1_2_3_4

#kills the collapsed
kill @e[type=marker]