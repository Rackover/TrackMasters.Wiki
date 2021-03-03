<!-- TITLE:3. Packing -->

Once you have every file you want to override or add to the game in your Work Directory, you need to pack up your work directory to create a modpack that the game will read.
Before packing up your mod, you should add a **meta file** to your Work Directory that describes the name of the mod and its version.
# The meta file (META.YML)
The meta file is a text file that you can create with notepad, for example, and that should be placed at the root of your Work Directory.

It should always be named `META.YML`, and contain the following informations:
* **Name** of your mod
* **Version** of your mod (a number)
* **Author** of the mod (your name or pseudonym)

Here is an example of content for the meta file:
```
Name: LouveSystems' Statue
Version: 1
Author: Louve
```

:::info
Informations in the meta file should be separated with a line break, and any extra information that is not in any of these three fields will be ignored by the game.
:::
# PAKing up
Right before packing up, your Work directory should look something like this:
* At the root directory, `META.YML`
* One or more files/folders that you wish to include in your modpack

For example, a mod that replaces the main menu music with another one and does nothing else, would look something like this:
```└───My mod
    │   META.YML
    │
    └───SOUND
        │
        └───BANK
                bgm_frontend.ogg
```

Packing up is accomplished by the** mod packer (PAK.EXE)** that is provided with TrackMasters, and normally always located in your Mods Directory. If for some reason you are missing it, [you can download it by clicking here.](/_contents/downloadable/PAK.EXE) You should place it in your Mods Directory.

![mod folder screenshot.png](/_contents/tools/mod folder screenshot.png)

To pack up your mod, simply **drag & drop** your work directory ontop of the mod packer (PAK.EXE). The packing process should take place automatically and present you with a screen similar to this one :

![pak2.png](/_contents/tools/pak2.png)

You can then safely close the window. A modpack, named after your mod, should now be present in your Mods Directory.