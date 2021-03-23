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

| Property | Type | Default value | Description |
| -------- | -------- | -------- |
|  Id  |   text  | N/A | **MUST be filled with the ID of your vehicle**, or it will not be loaded. Can be any string. |
|  ModelPath  |  text  | N/A | The relative virtual path to the OBJ model used for this vehicle. |
|  ColorCount  |   number (0-2)  | 2 | How many colors can be picked for this vehicle (zero, one or two) |
|  PitchMultiplier  | number | 1 | By how much will the engine sound of the car be increased or lowered when accelerating or deccelerating |
|  EngineType  |  text | MEDIUM | Can be either HEAVY, LIGHT or MEDIUM. Affects the engine sound and the behaviour of its pitch.
|  Weight  |   positive number | 2 |The heavier a car is, the more likely it is to push other cars around when bumping in them. |
|  Acceleration  |  positive number  | 0.75 | At which speed does the vehicle reach its maximum speed. |
|  MaxSpeed  |   positive number | 25 |The maximum speed that this vehicle can reach. _Note: This value uses an arbitrary unit, where each unit is equivalent to 4kph. A max speed of 10 = 40 kph._|
|  TurnSpeed  |  positive number | 3 | How fast does the vehicle reach its maximum turn amplitude when turning.  |
|  MaxTurn  |   positve number  | 4 | How tight this vehicle's turns can be. The higher this value is, the tightest the vehicle will turn.  |
|  ForwardFriction  |  positive number | 2 | The higher this value is, the more the vehicle will deccelerate naturally when no inputs are given. |
|  TurnFriction  |  positive number | 5 | In absence of steering input, the higher this value is the quicker the vehicle's wheel will reset. If this value is too low, a single short steering input will leave the car turning for a little while.  |
|  TurnSpeedReduction  |   positive number (0-1) | 0.1| By how much is the speed of the vehicle reduced when it steers.  |
|  Inertia  |   positive number (0-1)  | 0.7 | Increasing this value will make the throttle input more "mellow". With a high "inertia" value, a forward input will linger for a little while after the forward key is released. |
|  SpinForceWhenTurning  |  positive number  | 0.4 | By how much does steering also makes the vehicle spin on the vertical axis |
|  BackpedalSpeedAmount  | positive number (0-1) | 0.6 | How much of the max speed is available when backpedaling |
|  GroundRepulsion  | positive number |  6  | How much does the ground repel the car. Increasing this value will make the car more bouncy. | 
|  GroundCheckLength  |  positive number | 0.6 | How far from the ground can the car be before starting to be repelled. If the vehicle has issues with ground collision (like jumping from the ground when the speed reaches a certain threshold), increase this value to make the car a little more stable. This value should also stay correlated with the size of the tires: for bigger tires, increase this value accordingly.
|  AirControlAmount  |   positive number | 0.15  | How much of the vehicle's control remains when it is floating in the air above a **fan**. This is not a general, all purpose air control. Air control is only available when floating because of a fan. |
|  FrontTiresPosition  | number | 1.25  | The position of the front tires relative to the center of the car (0), on the forward axis. | 
|  RearTiresPosition  |   number | -1.90 | The position of the rear tires relative to the center of the car (0), on the forward axis. | 
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

:::info
If you're unsure about what values should some of these properties have, do not worry: you can leave them to their default value for now
:::



# Example
The game comes with an example modpack containing two vehicles for you to examine and play with. The sources of this modpack are included in the `SAMPLEMP` folder in the game's root directory, but you can also download the compiled modpack below if you need it:
:::download /_contents/modpacks/ADDITIONALCARS.PAK :::