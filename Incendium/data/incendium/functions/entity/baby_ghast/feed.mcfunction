# from (adv): technical/feed_ghastling

clear @s fire_charge 1

execute positioned ^ ^ ^2 as @e[type=vex,tag=in.baby_ghast,distance=..5,limit=1] at @s run function incendium:entity/baby_ghast/eat

advancement revoke @s only incendium:technical/feed_ghastling requirement
