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
You can find it in in the `SAMPLESP` folder, in the game's root directory. If you do not find it, you can also download it [here](/_contents/modpacks/LOUVESYSTEMS'%20STATUE.PAK).

# What trackparts are made of
A trackpart can be made of many things, but needs at least the following to work in a satisfying manner:
* **A track definition**, which is a text file declaring what this trackpart is made of, how is it named, how will it work, etc.
* Usually **1 model** 
* and **1 material, aswell as 1 texture** to go with it.

## The definition

