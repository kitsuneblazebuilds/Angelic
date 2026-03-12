# Check if the trigger was activated by angelten
execute as @a[scores={dogs=1..}] if entity @s[name=angelten] run function dogs:summon
execute as @a[scores={dogs=1..}] if entity @s[name=angelten] run scoreboard players reset @s dogs

# also check whether the custom Dark Blade was right‑clicked
# the useBlade objective now tracks minecraft.custom:minecraft.interact_with_item.minecraft_netherite_sword
# we make sure the player is holding the named, model‑data variant and is angelten
execute as @a[scores={useBlade=1..}] if entity @s[name=angelten] if data entity @s {SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:"{\"text\":\"Dark Blade\"}"},CustomModelData:1}}} run function dogs:summon
# reset the use count after the check so it doesn't fire continuously
execute as @a[scores={useBlade=1..}] run scoreboard players reset @s useBlade
