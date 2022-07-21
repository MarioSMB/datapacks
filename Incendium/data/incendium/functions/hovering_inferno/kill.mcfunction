# kill all entities involved

execute as @e[type=blaze,tag=in.hovering_inferno] at @s run forceload remove ~ ~

execute store result score $players in.dummy if entity @a[tag=in.inferno_fight]
scoreboard players remove $players in.dummy 2

execute if score $players in.dummy matches 1.. run loot spawn ~ ~ ~ loot incendium:hovering_inferno/extras

kill @e[tag=in.inferno_entity]


bossbar set incendium:inferno players
tag @a remove in.inferno_fight

schedule clear incendium:hovering_inferno/2s
schedule clear incendium:hovering_inferno/main
schedule clear incendium:hovering_inferno/loop
schedule clear incendium:hovering_inferno/timer
execute as @a run function incendium:border_of_life/stop

data remove storage incendium:main inferno
