# kill interaction and block



# execute summon husk run scoreboard players set @s id -1
# scoreboard players operation @e[type=husk,scores={id=-1}] id = @s id

$kill @e[scores={id=$(killing)},type=!player]

tag @s remove editor
