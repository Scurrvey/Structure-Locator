scoreboard players operation PosZ position += out output
execute as @p at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["tp"]}
execute as @e[type=armor_stand, tag=tp] run function locate:tp
