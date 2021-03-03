<!-- TITLE:Create AIs -->

Artificial intelligence in TrackMasters is used for CPU opponents (bots). These opponents can only be played against in a race (with or without other players) or when testing a track.
This section covers the way CPU works by default and how you can modify it to add new behaviours.

# The way it works
TrackMasters bots' behaviour is defined in `Lua`, a simple and accessible programming language. You can learn more about Lua [here.](https://www.lua.org/pil/1.html)
All bots exactly in the same way, by following the instructions taken from the **first .LUA file found** in the `AI` folder.

By default, that AI folder is the one from the soft data path, and that file is `AI/DEFAULT.LUA`.
Another important file can be found in that folder: `AI/TEMPLATE.LUA` is a script containing no instruction for the bot but all the function names, although empty, aswell as the description for the additional commands the game provides.
## Loading your script
Whichever script you make must be placed at the virtual path `AI/<your filename>.LUA` in your modpack, but that's not all.
Since only the first script found in that folder will be loaded by the game, you cannot give this script a filename that goes **after** DEFAULT, otherwise it will be last in the file order.
It is recommanded that you prefix its name with a number (for example:  `0_MyScript.LUA`  instead of `MyScript.LUA`) to make sure it is loaded first.
# Magic functions
Four functions are called by the game from your script at different occasions, if they're found. Most of your AI logic will therefore be in either one of these functions. They can all be found in `TEMPLATE.LUA` as a starting point. 
Let's take a look at them:

| Function name | Arguments | When is it called ? |
| -------- | -------- | --------- |
| `COMPUTE_AI`   | None  | This is the main function - it is called every frame, so every 1/60th of a second. This is likely where most of your logic will be | 
| `ON_RACE_START`   |  None  | Upon a race beginning, when the red light goes green     | 
| `ON_FINISH_RACE`   | None  | When the bot reaches the finish line of its last turn     | 
| `ON_COLLISION`   | `is_against_player` (true or false),  `other_player_rank` (a number from 1 to 8)  | When the bot collides with something, ground or vehicle     | 

You can create other functions in your script, but they will be ignored by the game and their code will only be ran if you call these functions from elsewhere.
# Inputs
## The virtual joystick
Each vehicle is controlled by a "joystick input", which represents:
* A left/right steering input (`x`)
* A forward/backward input (`y`)

The vehicle that runs your script has a "virtual" joystick, of which you can set the values yourself by calling the `SET_AI_INPUTS` function.
For example, if you `SET_AI_INPUTS` with a `x` of zero and a `y` of one, the bot's car will continually go forward and never turn, never stop. Try it out!

```
function COMPUTE_AI()
    local ai_inputs = { x = 0, y = 0 }
    SET_AI_INPUTS(ai_inputs)
end
```

:::info
	**In the base game**
	In TrackMasters, what the current AI code in `DEFAULT.LUA` does to handle the bots is very simple: it checks where the next track element is, and depending on the position of this next track element (if it's on the left or on the right of the vehicle), it sets the virtual the joystick `x` to either 1 or -1. The throttling (`y`) is always set to 1 so that the car always goes forward, except when the car is turning heavily at which point that value is lowered so that the car may go slower. The base game AI can never backpedal.
:::

## Other inputs
Three other inputs can be triggered by your code at any point:
* **Honking** : You can make the horn play by calling the `HORN()` function
* **Triggering the powerup**: If the car is currently holding a power up, you can trigger it with the `TRIGGER_POWERUP()` function. Be sure to check if `HAS_POWERUP()` returns **true** first!
* **Replacing the car on track**: This is very useful if the car is stuck, or not moving at all. At any point, you can call `REPLACE_CAR()` to put the car back on track.

:::info
	**In the base game**
	The default AI code triggers a honk each time their car collisions with another car, only if that other car is actually behind them in the race. They trigger a powerup as soon as they have one, and they replace their car on the track if they've been for too long at a too low speed (which may indicate that the car is stuck).
:::

# Exposed functions
In addition to  `HAS_POWERUP`, the game exposes several other functions for you to get information about the game state. 
**Here is a list of all available functions as of now **(TrackMasters 1.38) :


```	nil LOG(string text)		: Logs to logs/AI_LUA.LOG					
    nil HORN()                  : Horns
    nil TRIGGER_POWERUP()       : Triggers the held power up, if any  
    nil REPLACE_CAR()           : Puts the car back in place, on the previous or current trackpart
    nil SET_AI_INPUTS ({float x, float y} inputs)   : Inputs fed to the game by the AI, like a virtual joystick: x represents steering, and y represents throttle.
    
    
    bool HAS_POWERUP()          : Has picked up a powerup or not
    bool IS_PARALYZED()         : Is unable to move, e.g. frozen or before the race start
    bool IS_BEING_RETURNED()    : Is currently being replaced on the track    
    
    long GET_TRACK_ADVANCEMENT(byte rank)   : The higher it is, the further you are in the race (arbitrary unit)
    
    string GET_VEHICLE()        : Gets the vehicle name
    string GET_NAME()           : Gets the player name
    
    byte GET_RANK()             : Gets the position in the race (1st, 2nd, ...). From 1 to 8.
	
	float GET_VELOCITY()        : Gets the absolute speed of the car, all directions mixed. Always positive.
    
    {float x, float y} GET_NEXT_TRACKPART_RELATIVE_POSITION()   : The world position of the next track element transformed in local space
    
    {float x, float y, float z} GET_WORLD_POSITION()    : The car's world position            
    {float x, float y, float z} GET_FORWARD_AXIS()      : The car's forward axis (magnitude of 1)

    {float x, float y, float z}? GET_PLAYER_WORLD_POSITION(byte rank)   : Another car's world position, fetched by rank. May return nil if fetched player does not exist.
```