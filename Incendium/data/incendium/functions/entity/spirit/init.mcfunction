# from: entity/mobs/init
# @s: spirit

summon vex ~ ~ ~ {Tags:['in.spirit']}
execute as @e[type=vex,tag=in.spirit,tag=!in.checked,distance=..1,limit=1,sort=nearest] run function incendium:entity/spirit/vex_init
tp @s ~ ~-1000 ~
