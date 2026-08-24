# Creative Utilities

A Minecraft data pack provides util functions.

## Install

**IMPORTANT**  
This data pack generates and uses a custom dimension for mechanics to function, but this also makes the uninstallation process cumbersome. Please refer to the uninstallation section before considering whether to continue the installation.

Follow the steps to install:

1. Download the data pack from the [release](https://github.com/OKTW-Network/Creative-Utilities/releases) page.
2. Put the data pack in the `datapacks` folder under the world save folder, the path may like `../.minecraft/saves/<world name>/datapacks` or `../<server folder name>/<world name>/datapacks`.
3. Re-enter the singleplayer world or restart the server.
4. Perform the setup to complete the installation.

## Setup

After v4.2.0 (including), the data pack no longer tries to set up on load; instead, one of the methods must be performed:

- Enter the command `/function cu:try_setup`.
  - Resets the setup condition anyway.
  - Only works with the original file name; won't work if the folder or zip is being renamed.
  - Always being arranged after the "vanilla".
- Manually arrange the data pack using the `/datapack` command, then enter the command `/function cu:setup`.
  - The order is important for the dependent data packs; they should be arranged after this data pack.
  - Arranging this data pack before the "vanilla" is not tested.
  - Will also run the `/reload` command to ensure the initialization process is being triggered.

## Teardown

The teardown command `/function cu:teardown` can clear up and stop part of the functionality:

- Resets the setup condition.
- Remove most of the scoreboard objectives.
  - Except `cu-meta`.
- Remove most of the data storage.
  - **Including world storage and player storage.**
  - Except `cu:meta`.
- Clear all function schedules.

However, blocks, entities, entity tags, loaded chunks, and custom dimensions can only be removed manually.

## Uninstall

Running the teardown before removing the data pack is recommended.

**Required** extra steps to remove the world generation of custom dimensions:

(Before Minecraft 26.1)

1. Ensure the game or the server is stopped.
2. Locates the file `level.dat` in the world save.
3. Create a backup of `level.dat` in case.
4. Open `level.dat` by using tools like [NBTExplorer](https://github.com/jaquadro/NBTExplorer).
5. Remove the entries with the prefix `cu:` under the path `Data.WorldGenSettings.dimensions`.
6. Save the changes.
7. The world should be playable again without this data pack being enabled.
