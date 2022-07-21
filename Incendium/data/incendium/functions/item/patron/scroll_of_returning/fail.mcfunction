# from: player/main
# @s: player failed to teleport

tellraw @s {"text": "The scroll of returning only understands the Nether Dimension", "italic": true, "color": "#D393F5"}

execute store result score $rand in.dummy if predicate incendium:random/80

execute if score $rand in.dummy matches 1.. run tellraw @s {"text": "The ancient technique withstood itself", "italic": true, "color": "#D393F5"}

execute if score $rand in.dummy matches 1.. run loot replace entity @s[tag=in.mainhand_scroll] weapon.mainhand loot incendium:item/patron/scroll_of_returning
execute if score $rand in.dummy matches 1.. run loot replace entity @s[tag=in.offhand_scroll] weapon.offhand loot incendium:item/patron/scroll_of_returning

execute unless score $rand in.dummy matches 1.. run tellraw @s {"text": "The ancient technique crumbled upon usage", "italic": true, "color": "#D393F5"}
