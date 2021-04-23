tag @s add executor
execute as @s at @s run function locate:target
scoreboard players operation d1 d1d2 = target target
tp @s ~10 ~ ~
execute as @s at @s run function locate:target
scoreboard players operation d2 d1d2 = target target
scoreboard players operation r1 r1r2 = d1 d1d2
scoreboard players operation r2 r1r2 = d2 d1d2
scoreboard players operation r1 r1r2 *= r1 r1r2
scoreboard players operation r2 r1r2 *= r2 r1r2
execute as @s at @s run tp @s ~-10 ~ ~
execute store result score PosX position run data get entity @s Pos[0]
execute store result score PosY position run data get entity @s Pos[1]
execute store result score PosZ position run data get entity @s Pos[2]
execute store result score Z tpdistance run data get entity @s Pos[2]
scoreboard players operation maths1 maths = r1 r1r2
scoreboard players add maths1 maths 100
scoreboard players operation maths2 maths = r2 r1r2
scoreboard players operation maths2 maths -= maths1 maths
scoreboard players operation maths2 maths /= 20 maths
scoreboard players operation maths2 maths *= -1 maths
scoreboard players operation PosX position += maths2 maths
scoreboard players operation maths2 maths *= maths2 maths
scoreboard players operation maths1 maths = r1 r1r2
scoreboard players operation maths1 maths -= maths2 maths
execute if score maths1 maths < 0 maths run tellraw @a {"text":"Negative input", "color":"red"}
execute if score maths1 maths < 0 maths run scoreboard players operation maths1 maths *= -1 maths
execute if score maths1 maths < 0 maths run scoreboard players set neg working 1
execute if score maths1 maths >= 0 maths run scoreboard players set neg working 0
scoreboard players operation in input = maths1 maths
