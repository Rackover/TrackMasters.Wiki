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

# The definition file
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
| CanBePlacedRepeatedly |  boolean | `false` | Should a repeated click in the track editor allow the player to lay this track as many times ?|
| CanBeBuiltUpon  |   boolean |`false`  | Can another track element be placed ontop of this one ? |
| IsVeryTall  |  boolean  |  `false`   | Should all navigation above this track element be blocked ? |
| LengthOnGrid  | positive integer | `1`   | The size of the track element on the grid, on the X axis |
| WidthOnGrid  |  positive integer  |  `1`    |  The size of the track element on the grid, on the Y axis |
| RequiresGroundRemoval  |  boolean  | `false`   |  Should the top of the block below this track element be removed when this track element is laid?  |
| AmbientSound  |  text  | None | A looping sound that will be played constantly around this track element, and spatialized.  |
| Model  |  List of [Models](#models)  |  Empty  | The models that make this track element, with their collisions |
| Lights  |   List of [Lights](#lights) |  Empty  | The lights that compose this track element, and what they shed light on |

### Models
A track element can be made of any number of models. However, collision for this element will be handled per-model, so make sure to only enable collisions on the most important models of your trackpart if you have several!

| Property | Type |  Default value | Description |
| -------- | -------- | -------- | -------- |
| Path   | text  | N/A     | The virtual path (relative or absolute) to the [model file](#model-and-material-files). |
| MaterialPath |  text | `Path` with an .MTL extension instead of .OBJ  |  The virtual path (relative or absolute) to the [material file](#model-and-material-files).  |
| TexturePath |  text | None  | The virtual path (relative or absolute) to the [texture file](#model-and-material-files). If you've exported your model and material with blender, you will need to specify this.  |
| Position  |   [Vector](#vectors) |`false`  | Can another track element be placed ontop of this one ? |
| Rotation  |  [Vector](#vectors)  |  `false`   | Should all navigation above this track element be blocked ? |
| Collision  |  text  |  None   | Can be either of the following: **Box** (collision is a block around the trackpart that takes all the space available), **Simple** (collision is a block as small as possible to wrap the model), **Complex** (collision follows the edges of the mesh precisely) or **None** (no collision at all). 
| BiomeSpecific | List of texts | Empty | If this is empty, the model and its collision will be present on all biomes. If this list contains one of more biome names (`CITY`, `DESERT`, `ICE`) they will only appear on these biomes. | 

### Lights
A track element can be made of any number of lights - but too many lights might be grouped together for performance reasons, which may alter the way the model is shaded.
Lights are spheres and not projectors, so they will light up every surface placed in their radius.

| Property | Type |  Default value | Description |
| -------- | -------- | -------- | -------- |
| Color   | [Color](#colors)  | Black   | The color of the light. |
| Intensity | positive number between 0.1 and 20 | 1 | Brightness and power of the light |
| Size | positive number between 0.1 and 10 | 5 | Radius, in meters, of the light|
| Position  |   [Vector](#vectors) |`false`  | Can another track element be placed ontop of this one ? |
| Rotation  |  [Vector](#vectors)  |  `false`   | Should all navigation above this track element be blocked ? |
| AffectsCars  |  bool  |  false   | Will the light also affect vehicles surfaces? | 
| BiomeSpecific | List of texts | Empty | If this is empty, the light will be present on all biomes. If this list contains one of more biome names (`CITY`, `DESERT`, `ICE`) the light will only appear on these biomes. | 

### Vectors
| Property | Type |  Default value | Description |
| -------- | -------- | -------- | -------- |
| X   | number  | 0    | {red}(X) is the left-right axis.  |
| Y   | number  | 0    | {green}(Y) is the up-down axis.  |
| Z   | number  | 0    | {blue}(Z) is the forward-backward axis.  |

### Colors
| Property | Type |  Default value | Description |
| -------- | -------- | -------- | -------- |
| r   | positive number (0-255)  | 0    | {red}(Red)  |
| g   | positive number (0-255)   | 0    | {green}(Green) |
| b  | positive number (0-255)   | 0    | {blue}(Blue) |

## Aliases
Multiple words can be used to signify `true`, `false`, and `null`/`empty` in a track sheet. These aliases are always case insensitive, so for example `YES` and `Yes` will both be parsed to `true` indistinguishably.
| Word | Equivalent to | 
| -------- | -------- | 
| no | `false` |
| off | `false` |
| false | `false` |
| disabled | `false` |
| 0 | `false` |
| yes | `true` |
| on | `true` |
| true | `true` |
| enabled | `true` |
| 1 | `true` |
| null | `null` |
| none | `null` |
| nil | `null` |
| undefined | `null` |
| noone | `null` |
| nada | `null` |
| ~ | `null` |

## Example
```yaml
Id: 1x1_SmallStatue
CanBePlacedRepeatedly: Yes
CanBeBuiltUpon: No
IsVeryTall: No
RequiresGroundRemoval: No
LengthOnGrid: 1
WidthOnGrid: 1
AmbientSound: ~

Models:
- Path: EXAMPLE_FILES/1x1_Statue.OBJ
  MaterialPath: EXAMPLE_FILES/1x1_Statue.MTL
  Position:
    X: 0
    Y: 0
    Z: 0
  Rotation:
    X: 0
    Y: 0
    Z: 0
  Collision: Simple
  TexturePath: EXAMPLE_FILES/1x1_Statue.PNG
  
Lights:
- Color: 
   r: 255
   g: 120
   b: 255
  Intensity: 1
  Size: 5
  Position:
    X: 0
    Y: 6
    Z: 0
  Rotation:
    X: 0
    Y: 0
    Z: 0
  AffectsCars: No
  BiomeSpecific: 
  - CITY
```

# Model and material files
## Supported model formats
The only supported model format is Wavefront **.OBJ**. All the models you provide must be in that format.
Accordingly, the only supported material format is Wavefront **.MTL**. If you use Blender, exporting a model to OBJ automatically export its model with it in the MTL format.
Textures can be in any format, but are preferred to be in the **.PNG** format. 

:::warning
Normally, specifying the texture of the model via the `TexturePath` property should not be necessary, as the material already contains a link to the texture file via the MTL property `map_Kd`.
However, it appears that to this day (January 2021) blender-born MTL files are missing that property and there is no way to include it automatically.
TrackMasters fixes this automatically by adding a `map_Kd` property to the MTL file on loading, given that `TexturePath` is provided in the model definition. If you MTL is malformed, and it is likely to be if you export it with blender, please make sure to always indicate `TexturePath`.
:::