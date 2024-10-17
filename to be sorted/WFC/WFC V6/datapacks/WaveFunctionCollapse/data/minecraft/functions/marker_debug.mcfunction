
##mark markers xD

#execute at @e[type=armor_stand] run particle minecraft:dust 1 1 1 2 ~ ~20 ~ 0 4 0 0 10
execute at @e[type=marker,tag=!] run particle minecraft:dust 1 1 1 2 ~ ~20 ~ 0 4 0 0 10
execute at @e[type=marker,tag=] run particle minecraft:dust 0.016 0.016 0.016 2 ~ ~20 ~ 0 4 0 0 10


#General

execute at @e[tag=collapsed] run particle minecraft:dust 0 0 0 2 ~ ~2 ~ 0 6 0 0 10
execute at @e[tag=superposition] run particle minecraft:dust 0 1 0.718 2 ~ ~9 ~ 0 6 0 0 10

execute at @e[tag=selected] run particle minecraft:dust 0.933 1 0 2 ~ ~2 ~ 0 4 0 0 10

#Value -1 | Not collapsed
execute at @e[scores={North=-1}] run particle minecraft:dust 1 0 1 2 ~ ~16 ~-3 0 0 2 0 4
execute at @e[scores={East=-1}] run particle minecraft:dust 1 0 1 2 ~3 ~16 ~ 2 0 0 0 4
execute at @e[scores={South=-1}] run particle minecraft:dust 1 0 1 2 ~ ~16 ~3 0 0 2 0 4
execute at @e[scores={West=-1}] run particle minecraft:dust 1 0 1 2 ~-3 ~16 ~ 2 0 0 0 4

#Value 0 | Do not go
execute at @e[scores={North=0}] run particle minecraft:dust 1 1 1 2 ~ ~16 ~-3 0 0 2 0 4
execute at @e[scores={East=0}] run particle minecraft:dust 1 1 1 2 ~3 ~16 ~ 2 0 0 0 4
execute at @e[scores={South=0}] run particle minecraft:dust 1 1 1 2 ~ ~16 ~3 0 0 2 0 4
execute at @e[scores={West=0}] run particle minecraft:dust 1 1 1 2 ~-3 ~16 ~ 2 0 0 0 4

#Value 1 | Packed Ice
execute at @e[scores={North=1}] run particle minecraft:dust 10 0 0 2 ~ ~16 ~-3 0 0 2 0 4
execute at @e[scores={East=1}] run particle minecraft:dust 10 0 0 2 ~3 ~16 ~ 2 0 0 0 4
execute at @e[scores={South=1}] run particle minecraft:dust 10 0 0 2 ~ ~16 ~3 0 0 2 0 4
execute at @e[scores={West=1}] run particle minecraft:dust 10 0 0 2 ~-3 ~16 ~ 2 0 0 0 4

#Value 2 | Blue Ice
execute at @e[scores={North=2}] run particle minecraft:dust 0 1 0 2 ~ ~16 ~-3 0 0 2 0 4
execute at @e[scores={East=2}] run particle minecraft:dust 0 1 0 2 ~3 ~16 ~ 2 0 0 0 4
execute at @e[scores={South=2}] run particle minecraft:dust 0 1 0 2 ~ ~16 ~3 0 0 2 0 4
execute at @e[scores={West=2}] run particle minecraft:dust 0 1 0 2 ~-3 ~16 ~ 2 0 0 0 4

#Value 3
execute at @e[scores={North=3}] run particle minecraft:dust 0 0 1 2 ~ ~16 ~-3 0 0 2 0 4
execute at @e[scores={East=3}] run particle minecraft:dust 0 0 1 2 ~3 ~16 ~ 2 0 0 0 4
execute at @e[scores={South=3}] run particle minecraft:dust 0 0 1 2 ~ ~16 ~3 0 0 2 0 4
execute at @e[scores={West=3}] run particle minecraft:dust 0 0 1 2 ~-3 ~16 ~ 2 0 0 0 4

