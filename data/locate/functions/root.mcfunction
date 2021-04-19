scoreboard players operation last2 working = last working
scoreboard players operation last working = working working
scoreboard players operation working working = in input
scoreboard players operation working working /= tmp working
scoreboard players operation working working += tmp working
scoreboard players operation working working /= 2 working
scoreboard players operation tmp working = working working
execute if score last working = working working run scoreboard players operation out output = working working
execute if score last2 working = working working run scoreboard players operation out output = working working
execute if score last working = working working run function locate:summon
execute if score last2 working = working working run function locate:summon
execute if score last working = working working run scoreboard players add count working 1
execute if score last2 working = working working run scoreboard players add count working 1
execute if score count working matches 0 run schedule function locate:root 1t
scoreboard players set count working 0 