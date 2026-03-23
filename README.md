# Creative Utilities

A Minecraft data pack provides util functions.

## Teardown

Use the command `/function cu:teardown` and it will:

- Resets setup condition
- Remove scoreboard objectives
- Remove data storages
- Clear schedules
- Disable the data pack

Blocks, entities, loaded chunks, and entity tags can only be removed manually.

**IMPORTENT**  
Required extra steps to remove the world generation of custom dimensions:

(before Minecraft 26.1)

1. Ensure the game or the server is stopped.
2. Locates the file `level.dat` in the world save.
3. Create a backup of `level.dat` in case.
4. Open `level.dat` by using tools like [NBTExplorer](https://github.com/jaquadro/NBTExplorer).
5. Remove the entries with the prefix `cu:` under the path `Data.WorldGenSettings.dimensions`.
6. Save the changes.
