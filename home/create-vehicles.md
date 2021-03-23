<!-- TITLE:Create vehicles -->

TrackMasters supports the addition of new vehicles via modpaks. There is no limit to how many vehicles can be added to the game, but vehicles from the base game cannot be modified or removed themselves.

# Tools
In addition to the traditional [packing tool](https://wiki.trackmasters.louve.systems/read/home/3-packing.md) and [text editor](https://wiki.trackmasters.louve.systems/read/home/1-getting-started.md), you might need a 3D modelization software like Blender or Autodesk 3DSMax. If this is the first time you make a vehicle for TrackMasters, you might aswell want to check out the **vehicle editor**.
Although normally included with the game and present in the game's root directory, you can download it below if for any reason you are missing it.
:::download /_contents/downloadable/CAREDITR.EXE :::

# "What vehicles are made of"
Each vehicle is made of at least two files :
* **A definition file**, which is a YML text file giving all the informations about said vehicle. This is the file that is edited and saved by the vehicle editor and where most of the works happen.
* **A car model** of the OBJ format that will be used by the game to display the car. No textures are required as all vehicles use the same texture. See [Model](#model).
* Zero, one or two tire models (OBJ format aswell) depending on if you want your vehicle to use the default tires (zero), a custom tire model (one), or a custom tire model for the front tires and another custom model for the rear tires.

## The definition file
The vehicle definition (internally called `vehicle sheet`) contains a lot of information, ranging from visuals (tires position, headlights position and color, ...) to handling (max speed, acceleration). This file is a YML text file, and is expected to contain the following informations:

| Property | Column 2 | Column 3 |
| -------- | -------- | -------- |
|  Id  |   SuperCooper  |
|  ModelPath  |   MODELS/SUPERC.OBJ  |
|  ColorCount  |   2  |
|  PitchMultiplier  |   0.800000012  |
|  EngineType  |   HEAVY  |
|  Weight  |   7  |
|  Acceleration  |   0.200000003  |
|  MaxSpeed  |   100  |
|  TurnSpeed  |   3  |
|  MaxTurn  |   5  |
|  ForwardFriction  |   4  |
|  TurnFriction  |   10  |
|  TurnSpeedReduction  |   0.300000012  |
|  Inertia  |   0.300000012  |
|  SpinForceWhenTurning  |   0  |
|  BackpedalSpeedAmount  |   0.600000024  |
|  GroundRepulsion  |   8  |
|  GroundCheckLength  |   0.600000024  |
|  AirControlAmount  |   0.150000006  |
|  FrontTiresPosition  |   1.25  |
|  RearTiresPosition  |   -1.36629212  |
|  TiresHeight  |   -0.0471910127  |
|  TiresSpacing  |   1.38764036  |
|  FrontTiresModelPath  |   MODELS/SUPERC_T.OBJ  |
|  BackTiresModelPath  |   ''  |
|  HeadlightsColor  |    |
|  HeadlightsHeight  |   0.448314607  |
|  FrontHoverPointsPosition  |   1.36629212  |
|  RearHoverPointsPosition  |   -1.36629212  |
|  HoverPointsHeight  |   0.0528089888  |
|  HoverPointsSpacing  |   1.38764036  |





# Example
The game comes with an example modpack containing two vehicles for you to examine and play with. The sources of this modpack are included in the `SAMPLEMP` folder in the game's root directory, but you can also download the compiled modpack below if you need it:
:::download /_contents/modpacks/ADDITIONALCARS.PAK :::