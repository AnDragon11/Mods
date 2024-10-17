
#execute unless block ^ ^ ^ air run function tools:raycast/selected

execute unless block ^ ^ ^ air align xyz run tp @e[tag=selected,limit=1,sort=nearest] ~.01 ~.01 ~.01

execute if block ^ ^ ^ air positioned ^ ^ ^.1 run function tools:raycast/raycast
