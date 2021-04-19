
execute as @e[type=armor_stand, tag=firsttag, tag=!secondtag] at @s run tp @s ~ 120 ~ 
execute as @e[type=armor_stand, tag=firsttag, tag=!secondtag] at @s run execute as @a[tag=executor] at @s run tp @s ~ ~1000 ~
execute as @e[type=armor_stand, tag=firsttag] run tag @s add secondtag
execute as @e[type=armor_stand,tag=secondtag] at @s run execute if block ~ ~-1 ~ #nongravity run tp ~ ~-1 ~
execute as @e[type=armor_stand,tag=secondtag] at @s run execute unless block ~ ~ ~ #nongravity run tp ~ ~-1 ~ 
execute as @e[type=armor_stand,tag=secondtag] at @s run execute unless block ~ ~1 ~ #nongravity run tp ~ ~-1 ~
execute as @e[type=armor_stand,tag=secondtag, tag=!safe] at @s run execute unless block ~ ~-1 ~ #nongravity run scoreboard players add safe safe 1
execute as @e[type=armor_stand,tag=secondtag, tag=!safe] at @s run execute if block ~ ~ ~ #nongravity run scoreboard players add safe safe 1
execute as @e[type=armor_stand,tag=secondtag, tag=!safe] at @s run execute if block ~ ~1 ~ #nongravity run scoreboard players add safe safe 1
execute as @e[type=armor_stand,tag=secondtag, tag=!safe] at @s run execute if block ~ ~-2 ~ bedrock run say not safe
execute as @e[type=armor_stand,tag=secondtag, tag=!safe] at @s run execute if block ~ ~-2 ~ bedrock run kill @s
execute as @e[type=armor_stand,tag=secondtag, tag=!safe] at @s run execute if block ~ ~-2 ~ bedrock run execute as @a[tag=executor] at @s run function locate:spread
execute if score safe safe matches 3.. run tag @e[tag=secondtag] add safe
execute as @e[tag=safe] at @s run execute if block ~ ~-1 ~ water run setblock ~ ~ ~ lily_pad
execute as @e[tag=safe] at @s run execute if block ~ ~-1 ~ lava run setblock ~ ~-1 ~ stone
execute if score safe safe matches 3.. run tp @a[tag=executor] @e[tag=safe, limit=1]
execute as @a[tag=executor] at @s align xz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~
execute if score safe safe matches 3.. run say safe
execute if score safe safe matches 3.. run tag @a remove executor
execute if score safe safe matches 3.. run kill @e[tag=safe]
scoreboard players set safe safe 0