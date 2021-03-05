<!-- TITLE:Add or change sounds -->

Sounds in TrackMasters are made of two elements: a **register entry**, and a **sound file**.
# The sound register
The sound register is an XML text file containing the list of all the sounds that should be loaded, and to which channel they belong.
Four channels exist:
* **SFX** for *sound effects*, like the sound of hitting a wall.
* **BGS** for *background sound*, like a looping wind sound for a turbine.
* **BGM** for *background music*, mostly used for music.
* **NONE** for sounds that should always be played at max level whatever the volume settings are at. Currently unused.

Categorizing the sounds by channel allows the player to control the sound of the game more precisely (for example, cut down the music and only leave the sounds, or the opposite).

Each channel then contains a list of sounds to load, with indications about their format.

# Sound file