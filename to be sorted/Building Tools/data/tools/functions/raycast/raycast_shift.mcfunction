
#execute unless block ^ ^ ^ air run function tools:raycast/selected

execute unless block ^ ^ ^.1 air align xyz run tp @e[tag=selected,limit=1,sort=nearest] ~.01 ~.01 ~.01

execute if block ^ ^ ^.1 air positioned ^ ^ ^.1 run function tools:raycast/raycast_shift
