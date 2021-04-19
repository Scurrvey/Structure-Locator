tag @p add victim
execute store result entity @s Pos[0] double 1 run scoreboard players get PosX position
execute store result entity @s Pos[1] double 1 run scoreboard players get PosY position
execute store result entity @s Pos[2] double 1 run scoreboard players get PosZ position
execute as @s at @s run function locate:target
scoreboard players operation 1 tpdistance = target target
scoreboard players operation out2 output = out output
scoreboard players operation out2 output *= -1 maths
scoreboard players operation Z tpdistance += out2 output
execute store result entity @s Pos[0] double 1 run scoreboard players get PosX position
execute store result entity @s Pos[1] double 1 run scoreboard players get PosY position
execute store result entity @s Pos[2] double 1 run scoreboard players get Z tpdistance
execute as @s at @s run function locate:target
scoreboard players operation 2 tpdistance = target target
execute if score 1 tpdistance <= 2 tpdistance run execute store result entity @s Pos[0] double 1 run scoreboard players get PosX position
execute if score 1 tpdistance <= 2 tpdistance run execute store result entity @s Pos[1] double 1 run scoreboard players get PosY position
execute if score 1 tpdistance <= 2 tpdistance run execute store result entity @s Pos[2] double 1 run scoreboard players get PosZ position
execute as @s at @s run function locate:target
scoreboard players operation final tpdistance = target target
execute if score final tpdistance > @a[tag=executor, limit=1] accuracy run schedule function locate:prestart 1t 
execute if score final tpdistance > @a[tag=executor, limit=1] accuracy run say Trying again
execute if score final tpdistance <= @a[tag=executor, limit=1] accuracy run execute as @s at @s run schedule function locate:presafetp 1s

kill @s
tp @p[tag=victim] @s
tag @p[tag=victim] remove victim
