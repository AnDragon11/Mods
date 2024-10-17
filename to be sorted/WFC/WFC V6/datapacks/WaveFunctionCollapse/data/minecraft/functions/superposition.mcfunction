##Summon all possible positions

#1s
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:1,East:1,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:1,East:1,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:0,East:1,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:1,East:0,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:1,East:1,West:0, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:1,East:0,West:0, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:0,East:1,West:0, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:1,East:1,West:0, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:0,East:0,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:1,East:0,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:0,East:1,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:0,East:0,West:1, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:0,East:1,West:0, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:1,East:0,West:0, Superposition: 1}}
execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:0,East:0,West:0, Superposition: 1}}

#2s
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:2,East:2,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:2,East:2,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:0,East:2,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:2,East:0,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:2,East:2,West:0, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:2,East:0,West:0, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:0,East:2,West:0, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:2,East:2,West:0, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:0,East:0,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:2,East:0,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:0,East:2,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:0,East:0,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:0,East:2,West:0, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:2,East:0,West:0, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:2,South:0,East:0,West:0, Superposition: 1}}

#1-2s
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:1,East:2,West:2, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:1,South:2,East:0,West:0, Superposition: 1}}
#execute as @e[tag=selected] at @s run summon marker ~ ~ ~ {data:{North:0,South:0,East:1,West:2, Superposition: 1}}


#Asign data into scoreboards
execute as @e[nbt={data:{Superposition:1}}] at @s run tag @s add Superposition

execute as @e[tag=Superposition] at @s store result score @s East run data get entity @s data.East
execute as @e[tag=Superposition] at @s store result score @s West run data get entity @s data.West
execute as @e[tag=Superposition] at @s store result score @s South run data get entity @s data.South
execute as @e[tag=Superposition] at @s store result score @s North run data get entity @s data.North


##Collapse

#kills all the non suitable markers

execute as @e[tag=Superposition] at @s if score @e[tag=selected,limit=1] North matches 0.. unless score @e[tag=selected,limit=1] North = @s North run kill @s
execute as @e[tag=Superposition] at @s if score @e[tag=selected,limit=1] South matches 0.. unless score @e[tag=selected,limit=1] South = @s South run kill @s
execute as @e[tag=Superposition] at @s if score @e[tag=selected,limit=1] East matches 0.. unless score @e[tag=selected,limit=1] East = @s East run kill @s
execute as @e[tag=Superposition] at @s if score @e[tag=selected,limit=1] West matches 0.. unless score @e[tag=selected,limit=1] West = @s West run kill @s

#Collapse
execute if dimension minecraft:overworld as @e[tag=Superposition,sort=random,limit=1] at @s run tag @s add collapsed
execute as @e[tag=Superposition,tag=!collapsed] at @s if dimension minecraft:overworld run kill @s

function place