# from: entity/mobs/init
# @s: baby ghast

# figure where you want to face
execute unless entity @e[type=fireball,sort=nearest,distance=..50,limit=1] run tp @s ~ ~ ~ facing entity @p[distance=..8] eyes
execute unless entity @s[tag=in.following] run tp @s ~ ~ ~ facing entity @e[type=fireball,sort=nearest,distance=..50,limit=1] feet

# raycast start
execute unless entity @s[tag=in.following] positioned ~ ~0.6 ~ facing entity @e[type=fireball,sort=random,distance=..35,limit=1] feet run function incendium:entity/baby_ghast/start

# stop ghasts in place + remove sounds
execute as @e[type=ghast,distance=..12] run attribute @s minecraft:generic.follow_range base set 0.0001
execute unless entity @s[tag=in.following] run stopsound @a[distance=..40] * minecraft:entity.ghast.shoot
execute unless entity @s[tag=in.following] run stopsound @a[distance=..40] * minecraft:entity.ghast.warn

# teleports towards
execute if entity @s[tag=in.following] if entity @a[distance=2..8] facing entity @p[distance=2..8] eyes run tp @s ^ ^ ^0.15 

# visual
particle minecraft:end_rod ~ ~0.55 ~ 0.2 0.01 0.2 0 3 force
