<!-- TITLE:Create track elements -->

First of all, track elements in TrackMasters are internally referred to as **TrackParts**. The word TrackPart may appear here and there on this page and means rigorously the same thing as "track element".
TrackMasters comes with a certain number of track elements built-in, and these elements all have an ID ranging from 1 to 255. However, it is possible to add an unlimited amount of new track elements to the game via modding, as long as the name of each new element is unique.

:::warning
As of now (TrackMasters 1.38), custom track elements can **only be cosmetic**. 
That means that despite being placeable on a track, they cannot be made part of the actual path the player has to follow from start to finish to make a full lap. The navigation system will ignore them entirely.
This limitation is due to the complexity of making track elements navigatable by the game, that makes it hard or impossible to predict how a track is going to behave without the in-engine developing tools.
In the future, this limitation may be removed and a tool may be introduced to make including navigatable track elements in a modpack possible.
:::

This document will rely heavily on the **example modpack** (LOUVESYSTEMS' STATUE.PAK) to provide examples with each explanation. 
You can find it in in the `SAMPLESP` folder, in the game's root directory. If you do not find it, you can also download it [here](/_contents/modpacks/LOUVESYSTEMS'%20STATUE.PAK) and unzip it by yourself.

# What trackparts are made of
A trackpart can be made of many things, but needs at least the following to work in a satisfying manner:
* **A track definition**, which is a text file declaring what this trackpart is made of, how is it named, how will it work, etc.
* Usually **1 model** 
* and **1 material, aswell as 1 texture** to go with it.

## The definition file
The definition file for any trackpart **must be put** at the virtual path `/TRACKPCS/<My File>.YML`. The name of the file is of no importance, but you should probably give the file the same name you intend to give to your trackpart.

Similarly to the meta file of your modpack, it is a `YAML` text file. 
Most properties of the definition file are facultative and may or may not be left to their default value, but at least one information **must** be explicitely given for any custom track element: **the ID**.
The ID of your track part is a **string**, it can be of any length and contain any valid UTF8 character. It should be unique enough so that no other track element ever created in a mod can hold the same name.

When saving or loading a track, that ID will be used to store the trackpart in the track file - if it gets loaded later and the trackpart with that ID cannot be found, it will simply be skipped. However if another trackpart is currently loaded with the same ID, it will be replaced on the track with whatever track element is currently loaded with that ID.

:::info
It is impossible to override/replace base game track elements with custom track elements. The IDs of base track elements are a number, while the IDs of custom track elements can only be strings. They are also stored in a different fashion inside the trackfile.
:::

## Properties
| Property | Type |  Default value | Description |
| -------- | -------- | -------- | -------- |
| Id   | text  | N/A     | **MUST be filled with the ID of your track element, or it will not be loaded**. Can be any string.  |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |
|   |    |    |   |