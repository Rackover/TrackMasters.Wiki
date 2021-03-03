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
## Magic functions
Four functions are called by the game from your script at different occasions, if they're found. Most of your AI logic will therefore be in either one of these functions. They can all be found in `TEMPLATE.LUA` as a starting point. 
Let's take a look at them:

| Function name | Arguments | When is it called ? |
| -------- | -------- | --------- |
| `COMPUTE_AI`   | None  | This is the main function - it is called every frame, so every 1/60th of a second. This is likely where most of your logic will be | 
| `ON_RACE_START`   |  None  | Upon a race beginning, when the red light goes green     | 
| `ON_FINISH_RACE`   | None  | When the bot reaches the finish line of its last turn     | 
| `ON_COLLISION`   | `is_against_player` (true or false),  `other_player_rank` (a number from 1 to 8)  | When the bot collides with something, ground or vehicle     | 

You can create other functions in your script, but they will be ignored by the game and their content will only be ran if you call these functions from elsewhere.

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