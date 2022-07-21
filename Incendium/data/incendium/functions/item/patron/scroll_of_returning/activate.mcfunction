# from: player/main
# @s: player

tag @s add in.self

data modify storage incendium:temp player.Pos set from entity @s Pos

# nether scale (8x)
execute store result storage incendium:temp player.Pos[0] double 0.001 run data get storage incendium:temp player.Pos[0] 8000
execute store result storage incendium:temp player.Pos[2] double 0.001 run data get storage incendium:temp player.Pos[2] 8000 

execute in minecraft:overworld positioned 0.0 0.0 0.0 as @e[type=marker,tag=in.helper_entity,distance=..10] run function incendium:item/patron/scroll_of_returning/coords

tellraw @s {"text": "Woosh..! A familiar place awaits.", "italic": true, "color": "#D393F5"}

# particles before tping
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 50
particle minecraft:dust_color_transition 0.5 0.2 0.66 4.0 1.0 0.5 0.0 ~ ~ ~ 0.25 0.5 0.25 0.35 25

execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 50
execute at @s run particle minecraft:dust_color_transition 1.0 0.5 0.0 4.0 0.5 0.2 0.66 ~ ~ ~ 0.25 0.5 0.25 0.35 25

# random cond to not crumble
execute store result score $rand in.dummy if predicate incendium:random/20

execute if score $rand in.dummy matches 1.. run tellraw @s {"text": "The ancient technique withstood itself", "italic": true, "color": "#D393F5"}

execute if score $rand in.dummy matches 1.. run loot replace entity @s[tag=in.mainhand_scroll] weapon.mainhand loot incendium:item/patron/scroll_of_returning
execute if score $rand in.dummy matches 1.. run loot replace entity @s[tag=in.offhand_scroll] weapon.offhand loot incendium:item/patron/scroll_of_returning

execute unless score $rand in.dummy matches 1.. run tellraw @s {"text": "The ancient technique crumbled upon usage", "italic": true, "color": "#D393F5"}

tag @s remove in.self
