--[[

Available functions:
	nil LOG(string text)		: Logs to logs/AI_LUA.LOG					
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
--]]


-- Called when the light goes green in a start
function ON_RACE_START()

end


-- Called when the finish line is reached by this car
function ON_FINISH_RACE()

end


-- Called on each collision
function ON_COLLISION(is_against_player, other_player_rank)

end


-- Called every frame
function COMPUTE_AI()

    -- This table represents inputs on a joystick (x and y going from -1 to 1)
    -- They're fed directly to the AI, every frame
    local ai_inputs = { x = 0, y = 0 }
    
    SET_AI_INPUTS(ai_inputs)
end
