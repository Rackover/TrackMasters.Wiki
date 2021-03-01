<!-- TITLE:1. Getting started -->

This post aswell as its two follow-ups ([2. The Virtual File system](/home/2.-the-virtual-file-system.md) and [3. Packing](/home/3-packing.md)) serves as a tutorial to get started with TrackMasters's modding. 
In this section, we will outline what kind of tools and setup you will need to create a mod.

## General information
The game loads modpacks from the **Documents\My Games\LouveSystems' TrackMasters\Mods** directory. Throughout these pages, this directory will be referred to as the "**Mods Directory**".
Each time the game starts, it looks for .PAK files (modpacks) and load them in alphabetical (filenames) order. Invalid or corrupt modpacks are skipped, which triggers a warning in the log file (see below).

Depending on the kind of data these PAK contains, the capacity to play races with other players might be affected. Simply put, you cannot play with someone if their game is unaware of the track elements that you're using, for example. Some modifications however, like replacing sounds or adding localization files, do not impact gameplay and therefore will not affect your capacity to host or join games.

## Tools
* A simple text editor or IDE like [Notepad++](https://notepad-plus-plus.org/downloads/) is necessary to edit some game files or create information files about your mod
* [TrackMasters' ModPacker](/_contents/downloadable/PAK.EXE) (PAK.EXE) is necessary, as it turns your mod into a readable package for the game. It is normally already included in your Mods Directory and updated by TrackMasters automatically on each launch.

## Setup
* A modpack being nothing but a packed folder, you need to **create a directory** where you will put the files for your mod. You should name this folder after the mod you want to make (*for example, "My super mod"*), but for the rest of this documentation we will refer to it as the **Source Directory**.
* You should take a close look at `SOFTDATA` directory from the game's root directory. The game root's directory location depends on your installation, but you will usually find it in `C:\Program Files(x86)\Steam\steamapps\common\LS_TrackMasters\`. This directory contains clear data that is used by the game, and that you can override with your mod by (*for example*) creating files with the same name. More about this in [2. The Virtual File system](/home/2.-the-virtual-file-system.md) .

:::info Debugging errors
You can check for errors in the loading of your modpacks or modded assets in the **log file**, namely **TrackMasters.log**.
This file is located in the game's root directory, in a folder named "logs" and contains important information about the game session.
Check out for 'Error while loading PAK' in the log if something goes wrong or if your modpack is not detected.
:::

**Continue to  [2. The Virtual File system](/home/2.-the-virtual-file-system.md)**... 
