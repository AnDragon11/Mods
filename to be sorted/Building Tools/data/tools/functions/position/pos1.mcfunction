data remove entity @s attack

kill @e[tag=pos1]
summon armor_stand ~ ~ ~ {Tags:["loot"]}
execute as @e[tag=loot,sort=nearest,limit=1] at @s run loot replace entity @s armor.head mine ~ ~ ~ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}

execute align xyz run summon block_display ~.01 ~.01 ~.01 {Tags:["pos1"],Glowing:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.98f,0.98f,0.98f]}}


execute unless block ~ ~ ~ air run data modify entity @e[type=minecraft:block_display,limit=1,tag=pos1] block_state.Name set string entity @e[tag=loot,limit=1] ArmorItems[3].id

execute if block ~ ~ ~ air run data modify entity @e[type=minecraft:block_display,limit=1,tag=pos1] block_state.Name set value "minecraft:light_gray_stained_glass"


tellraw @p ["",{"text":"Position ","color":"blue"},{"text":"1","bold":true,"color":"blue"},{"text":" selected"}]

team join position_1 @e[tag=pos1]
function tools:coords
kill @e[tag=loot]