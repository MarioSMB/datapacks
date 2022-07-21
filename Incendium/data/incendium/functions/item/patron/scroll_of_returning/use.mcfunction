# from: player/main
# @s: player

item replace entity @s[tag=in.mainhand_scroll] weapon.mainhand with air
item replace entity @s[tag=in.offhand_scroll] weapon.offhand with air

execute store result score $in.nether in.dummy if data entity @s {Dimension:"minecraft:the_nether"}

execute if score $in.nether in.dummy matches 1.. run function incendium:item/patron/scroll_of_returning/activate
execute unless score $in.nether in.dummy matches 1.. run function incendium:item/patron/scroll_of_returning/fail
