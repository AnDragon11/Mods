$execute as @e[tag=pos2] at @s run fill ~ ~ ~ ~$(x) ~$(y) ~$(z) $(block) replace $(replace)
$say replacing $(replace) with $(block)
data remove storage minecraft:coords coordinates.replace