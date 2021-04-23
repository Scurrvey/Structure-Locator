spreadplayers ~ ~ 0 40000 true @s
execute as @s at @s run function locate:target
execute if score success target matches 1 run execute if score target target matches ..40000 run tag @s add executor
execute if score success target matches 1 run execute if score target target matches ..40000 run schedule function locate:prestart 1t
execute if score target target matches 0 run say error! target is too far away!