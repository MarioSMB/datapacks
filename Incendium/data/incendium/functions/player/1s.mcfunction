# from: clocks/1s
# @s: player tick

## Castle things
# tag entities nearby
execute if score $castle.AI in.state matches 1.. run tag @e[type=piglin_brute, tag=in.activate_far, tag=in.castle, distance=..90] add in.active

execute if score $castle.AI in.state matches 1.. run tag @e[type=piglin_brute, tag=in.activate_mid, tag=in.castle, distance=..32] add in.active

execute if score $castle.AI in.state matches 1.. run tag @e[type=piglin_brute, tag=in.activate_near, tag=in.castle, distance=..25] add in.active

## Spirits
scoreboard players set $chain_kill in.dummy 0
execute if entity @s[predicate=incendium:biome/spirit_biome,predicate=incendium:wearing/chainmail] store success score $chain_kill in.dummy run kill @e[type=vex,tag=in.spirit,distance=..10]
execute if score $chain_kill in.dummy matches 1.. run advancement grant @s only incendium:incendium/chain_armor

## pillory
# need 2 contexts
loot replace entity @e[type=armor_stand,tag=in.pillory,distance=..30] armor.head loot incendium:castle/base/head_self
tag @e[type=armor_stand,tag=in.pillory,distance=..30] remove in.pillory

## infernal wings
item modify entity @s[predicate=incendium:wearing/infernal_feather] armor.chest incendium:upgrade/tool/infernal_wings

function incendium:player/advancements/1s
