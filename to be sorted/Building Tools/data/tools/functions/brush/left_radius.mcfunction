


execute unless predicate tools:sneaking run execute as @e[tag=tools] at @s store result storage minecraft:coords coordinates.radius int 1 run scoreboard players remove radius coordinates 1

execute if predicate tools:sneaking run execute as @e[tag=tools] at @s store result storage minecraft:coords coordinates.radius int 1 run scoreboard players remove radius coordinates 10


execute if score radius coordinates matches ..-1 run scoreboard players set radius coordinates 0
execute if score radius coordinates matches 70.. run scoreboard players set radius coordinates 69


title @a[tag=editor] actionbar ["",{"text":"The radius is:","color":"gold"},{"text":" "},{"score":{"name":"radius","objective":"coordinates"},"bold":true,"color":"dark_red"}]



