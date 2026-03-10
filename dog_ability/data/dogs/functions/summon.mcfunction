# Summon 3 black armored wolves near the player

# First wolf - offset to the left
summon wolf ~-1 ~ ~ {variant:black,CollarColor:10,Sitting:1b,CustomName:'{"text":"Doggy","italic":true}',OwnerUUID:[I;122076550,-1345891030,-1537848218,-1019815970],equipment:{body:{id:wolf_armor,count:1}}}

# Second wolf - directly in front
summon wolf ~ ~ ~1 {variant:black,CollarColor:10,Sitting:1b,CustomName:'{"text":"Doggy","italic":true}',OwnerUUID:[I;122076550,-1345891030,-1537848218,-1019815970],equipment:{body:{id:wolf_armor,count:1}}}

# Third wolf - offset to the right
summon wolf ~1 ~ ~ {variant:black,CollarColor:10,Sitting:1b,CustomName:'{"text":"Doggy","italic":true}',OwnerUUID:[I;122076550,-1345891030,-1537848218,-1019815970],equipment:{body:{id:wolf_armor,count:1}}}

# Apply slowness effect for 30 seconds (600 ticks)
effect give @s slowness 30 255

# Apply weakness for 60 seconds (1200 ticks)
effect give @s weakness 60 0
