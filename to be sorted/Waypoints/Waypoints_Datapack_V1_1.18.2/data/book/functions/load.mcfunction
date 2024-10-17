#Every think in this file will only be called upon loading the pack/world
tellraw @a ["",{"text":"Waypoint","bold":true,"color":"green"},{"text":" Datapack installed\n"},{"text":"Click Here","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function book:book"}},{"text":" to get the book"}]
gamerule sendCommandFeedback false