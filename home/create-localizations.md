<!-- TITLE:Create localizations -->

TrackMasters handle multiple languages and switching between them while ingame, seemlessly. 
You can add any number of language you like, by giving each of them their separate folder.**

# File structure
All languages are located at the virtual path `LOCALIZATION/`.
Each language is in its own subfolder at this path, and the name of each language's folder is the name it will appear as in the options menu.

:::info
It is recommended to use the name of each language in this language itself, and not the english name for that language.
For example: Name the french language "Français" instead of "French", so you can make sure that french people will be able to select it whatever language the game is currently in (or if they cannot speak english).
:::

In each language subfolder, **exactly two files** should be present:
* **LANGUAGE.XML**, which contains all the lines and text for that language.
* **FLAG.PNG**, which will be the icon for that language in the game's options menu.

# XML Structure
The localization XML files are designed to be easy to work with for non-programmers, and therefore include the least amount of syntax or code.
It is divided in **categories** (example: FILE_EXPLORER), in which each line has an **identifier** (example: ENTER_TRACK_NAME). The identifier is usually a short, english equivalent of the line that is being translated.

These categories, finally, are sorted by **version**. This sort is unnecessary and ignored by the game - it is only used to make it easier for translators to spot the new lines added to a localization file when the game receives an update. The lines in the `v1` category were the first added, and with each update that added lines a new division was created. You can add all your lines in a single category if you like, as the game ignores version tags and processes them from top to bottom in sequential orders regardless of their name.

## Language tag
The whole document is enclosed in a `<language>` tag that takes a single falcutative parameter named `ISO6392Name`. That parameter is the **ISO6392** code corresponding to this language. Each spoken language has an ISO code, and that code is only used to autodetect the right language when the player launches the game for the first time (it is compared with the OS' language to set the right language the first time). 

Best practice is to include it in your localization file, unless you're creating a file for a language that doesn't have any ISO6392 code.
## Example
Here is a short example of structure for a localization file that would only contain three lines:
```
<?xml version="1.0" encoding="UTF-8"?>
<language ISO6392Name="fra">
    <v1>
        <FRONTEND>
            <CUSTOMIZE_CAR>Garage</CUSTOMIZE_CAR>
            <PLAYER_NAME_PLACEHOLDER>Pseudo</PLAYER_NAME_PLACEHOLDER>
        </FRONTEND>
    </v1>

    <v2>
        <GENERIC>
            <COMPUTER_PLAYER_PREFIX>ORDI</COMPUTER_PLAYER_PREFIX>
        </GENERIC>
    <v2>
</language>
```
## Missing lines
To know which lines you should add to your localization file for it to cover the entirety of the game, please take a look at the english `LANGUAGE.XML` file from TrackMasters' soft data path. 
The virtual path for this file is `LOCALZTN/English/LANGUAGE.XML`

If a line is required by the game and is not present in your localization file, it will be replaced by an error indicating which category or identifier was expected and missing.