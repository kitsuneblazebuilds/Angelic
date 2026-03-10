# Check if the trigger was activated by angelten
execute as @a[scores={dogs=1..}] if entity @s[name=angelten] run function dogs:summon
execute as @a[scores={dogs=1..}] if entity @s[name=angelten] run scoreboard players reset @s dogs
