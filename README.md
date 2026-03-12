# Angelic
Minecraft Datapack.

## Dark Blade Item

This datapack introduces a custom item called **Dark Blade**. When the player named `angelten` uses this sword, three armored wolves will be summoned around them. Only `angelten` can trigger the effect.

### How it works

* A scoreboard objective `useBlade` tracks right‑click interactions with a netherite sword via `minecraft.custom:minecraft.interact_with_item.minecraft_netherite_sword`.
* The tick function checks that the player interacting is `angelten` and that the held item has the proper name and custom model data (`1`).
* Upon a valid use the existing `dogs:summon` function runs, spawning the dogs and applying effects.

### Giving the item

On datapack load the `load.mcfunction` will run the give command, so if you reload the datapack `angelten` will automatically receive the Dark Blade.  
You can also grant it manually with a command such as:

```mcfunction
execute as angelten run give @s minecraft:netherite_sword\
  {display:{Name:'[{"text":"Dark Blade","color":"dark_gray","bold":true,"italic":false}]',Lore:['[{"text":"A fallen Angel a written remorse","color":"gray","italic":false}]','[{"text":"+Summon 3 dogs when right click","italic":false}]','[{"text":"+Receive Blindness and Immobility when used.","italic":false}]']},CustomModelData:1,enchantable:{value:1},enchantment_glint_override:1,death_protection:1} 1
```

Modify the NBT to change name, colors or additional lore lines if desired.  The sword must keep `CustomModelData:1` (or update the check in the tick function accordingly) in order to trigger the summon effect.
### Installation & Usage

Follow these steps to add the datapack and resource pack to your world and start using the Dark Blade:

1. **Download or copy the folders**
   * The datapack is the `dog_ability` directory.  Copy or zip it and place it into your world's `datapacks/` folder.
   * The resource pack is the top‑level `resourcepack/` directory.  Place the entire `resourcepack` folder into your `.minecraft/resourcepacks/` (or wherever your client loads packs from).

2. **Load the world**
   * Start Minecraft on a version compatible with your pack (pack format 12 indicated in `pack.mcmeta` is for 1.20+).
   * Create or open the world where you placed the datapack.
   * In chat run `/reload` to load the datapack and create the scoreboard objectives; you should see the blue "Datapacks reloaded" message.

3. **Verify objectives**
   * Run `/scoreboard objectives list`.  You should see `dogs (trigger)` and `useBlade (minecraft.custom:interact_with_item.minecraft_netherite_sword)` listed.
   * Optionally test `/trigger dogs set 1` as the player `angelten` (must be logged in under that name) – it will immediately reset itself and, if run correctly, summon the dogs via the tick function.

4. **Give or obtain the Dark Blade**
   * Run the give command documented earlier, or just reload the datapack since `load.mcfunction` gives it automatically to `angelten`.
   * Make sure your client has the resource pack active; open the resource pack menu and move the `Angelic` pack (named `Dark Blade resource pack`) into the selected list.  The blade will then display the custom texture when held.

5. **Use the sword**
   * Hold the Dark Blade and right‑click.  If you are player `angelten` and the sword has `CustomModelData:1`, the three armored wolves will spawn around you and you will receive blindness & immobility (as per `dogs:summon`).
   * The `/trigger dogs set 1` command is an alternative if you want to summon manually without right‑clicking.

6. **Customization**
   * To change the look of the blade replace `resourcepack/assets/minecraft/textures/item/dark_blade.png` with a new texture and/or edit the model JSON under `Models/Dark Blade` then copy it into the resource pack.
   * To change the name, lore, or NBT tags adjust the give command in `dogs/functions/load.mcfunction` and any manual give commands you use.
   * If you alter the `CustomModelData` value, update the objective check in `dogs/functions/tick.mcfunction` and the model override in `resourcepack/assets/minecraft/models/item/netherite_sword.json`.

---

### Custom model

The model files live in `resourcepack/assets/minecraft/...` and reference the original design found under the `Models/Dark Blade` directory.  The pack uses a **model override on the vanilla netherite sword** so the custom appearance only applies when the item has `CustomModelData:1` (the Dark Blade).  Other netherite swords keep their normal texture.

* `resourcepack/assets/minecraft/models/item/dark_blade.json` — standalone model for the blade
* `resourcepack/assets/minecraft/models/item/netherite_sword.json` — adds an override mapping `custom_model_data=1` to `item/dark_blade`
* `resourcepack/assets/minecraft/textures/item/dark_blade.png` — texture (copied from `Models/Dark Blade/dark_blade.png`)

You can update the `CustomModelData` value or use a different base item if desired; just adjust the commands in `dogs/functions/load.mcfunction` and `tick.mcfunction` accordingly.
