gamerule commandModificationBlockLimit 1000000000
data modify storage minecraft:coords coordinates.animation set value 1



##id system disabled

#scoreboard objectives add editor_id dummy
#scoreboard objectives setdisplay sidebar editor_id
#scoreboard players reset value editor_id
#scoreboard players reset @a editor_id
#scoreboard objectives add coordinates dummy


#scoreboard objectives setdisplay sidebar coordinates

team add position_1
team add position_2
team modify position_1 color blue
team modify position_2 color red
team add position_3
team modify position_3 color yellow
