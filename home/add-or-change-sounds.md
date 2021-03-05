<!-- TITLE:Add or change sounds -->

Sounds in TrackMasters are made of two elements: a **register entry**, and a **sound file**.
# The sound register
The sound register is an XML text file containing the list of all the sounds that should be loaded, and to which channel they belong.
The default sound register for the game can be found at the virtual path `SOUND/REGISTER/DEFAULT.XML`. Any number of registers can be added to the game, and they will all be loaded in order.

## Channels
Four channels exist:
* **SFX** for *sound effects*, like the sound of hitting a wall.
* **BGS** for *background sound*, like a looping wind sound for a turbine.
* **BGM** for *background music*, mostly used for music.
* **NONE** for sounds that should always be played at max level whatever the volume settings are at. Currently unused.

Categorizing the sounds by channel allows the player to control the sound of the game more precisely (for example, cut down the music and only leave the sounds, or the opposite).

When specifying a channel in the sound register, you can also specify a `base_path` which is a virtual path that will be prepended to every individual sound path. 
For example, if most of your sounds are in the `SOUND/BANK` directory, you might want to put that directory in the `base_path` of your channel so that the path of each of your sound can be something like `mysound.ogg` instead of `SOUND/BANK/mysound.ogg` every time.

### Example
```xml
 <CHANNEL name="SFX" base_path="SOUND/BANK">
        <sound format="OGGVORBIS" id="sfx_my_sound">my_sound.ogg</sound>
				...
</CHANNEL>
```

## Sounds

Each channel then contains a list of sounds to load, with diverse informations given by the `sound` tag.

| Property | Description |
| -------- | -------- | 
| &lt;inner space of the `sound` tag&gt;     | Virtual path to the actual sound file to load   |
| format |  If not specified, it will be autodetected from the file's extension. Supported formats are `MPEG`, `OGGVORBIS`, `WAV`, `AIFF` |
| id | The actual name your sound will be referred to internally by the game. For example, if you want to use your sound in a [Custom track element](/home/create-trackparts.md), this is name you will add to your track element |
| max_instances | If your sound is going to loop (for example, if it's attached to a track element), it will only be playable on loop **once at a time**. That's because the default value for `max_instances` is 1. This works for most looping sounds (background music, ambiant editor sound, etc...) but if you need more instances of your sound to be able to loop at a time, you can increase this number. *This will increase the initial loading time significantly*. |



# Sound file