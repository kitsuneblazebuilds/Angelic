# Initialize the dogs trigger objective
scoreboard objectives add dogs trigger

# objective to track use of the dark blade (netherite sword)
scoreboard objectives add useBlade minecraft.used:minecraft.netherite_sword

# give angelten the dark blade item (named, with lore and custom model data)
# you can run this manually or it will execute when the datapack loads
# here the sword has a dark_gray bold name, three lore lines, and uses CustomModelData=1
# adjust the JSON to change text, colors, or additional tags

execute as angelten run give @s minecraft:netherite_sword{display:{Name:'[{"text":"Dark Blade","color":"dark_gray","bold":true,"italic":false}]',Lore:['[{"text":"A fallen Angel a written remorse","color":"gray","italic":false}]','[{"text":"+Summon 3 dogs when right click","italic":false}]','[{"text":"+Receive Blindness and Immobility when used.","italic":false}]']},CustomModelData:1,enchantable:{value:1},enchantment_glint_override:1,death_protection:1} 1

# (the scoreboard objective useBlade already tracks interactions)
# 