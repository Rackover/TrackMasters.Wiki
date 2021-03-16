<!-- TITLE:Create localizations -->

TrackMasters handle multiple languages and switching between them while ingame, seemlessly. 
You can add any number of language you like, by giving each of them their separate folder.

# File structure
All languages are located at the virtual path `LOCALZTN/`.
Each language is in its own subfolder at this path, and the name of each language's folder is the name it will appear as in the options menu.

:::info
It is recommended to use the name of each language in this language itself, and not the english name for that language.
For example: Name the french language "Français" instead of "French", so you can make sure that french people will be able to select it whatever language the game is currently in (or if they cannot speak english).
:::

In each language subfolder, **exactly two files** should be present:
* **LANGUAGE.YML**, which contains all the lines and text for that language.
* **FLAG.PNG**, which will be the icon for that language in the game's options menu.

# YML Structure
The localization YML files are designed to be easy to work with for non-programmers, and therefore include the least amount of syntax or code.
It is divided in **categories** (example: FILE_EXPLORER), in which each line has an **identifier** (example: ENTER_TRACK_NAME). The identifier is usually a short, english equivalent of the line that is being translated.

These categories, finally, are sorted by **revision**. This sort is unnecessary and ignored by the game - it is only used to make it easier for translators to spot the new lines added to a localization file when the game receives an update. The lines in the `Revision: 1` division were the first added, and with each update that added lines a new division was created (`Revision: 2`, then `3`, ...). You can add all your lines in a single revision if you like, as the game ignores version tags and processes them from top to bottom in sequential orders regardless of their name.

## Metadata
Before specifying any translation, the document starts with a bit of metadata that indicates what the language is exactly and what to expect in the file. This header is made of two informations exactly:
* **Version** of the language file structure, this should always be **1**
* **ISO6392Name** of the language: That parameter is the **ISO6392** code corresponding to this language. Each spoken language has an ISO code, and that code is only used to autodetect the right language when the player launches the game for the first time (it is compared with the OS' language to set the right language the first time). This parameter is faultative but highly recommended. [List of ISO6392 language codes](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes). 

## Lines
Actual lines are then written down in the following fashion:
```yaml
Revisions:
	- Revision: 1
	Categories:
	- Category: MY_CATEGORY
			Lines:
				LINE_IDENTIFIER: Translation for this line
				ANOTHER_LINE_IDENTIFIER: Another translation for another line!
				...
	- Category: ANOTHER_CATEGORY
			Lines:
				MY_COOL_TEXT: A very cool text!
				...
		...
```

## Interpolation parameters
Some translated lines may feature information that is filled by the game. For example, in a race, "Your current position is 4" => The number 4 has to come from the game, while the rest of the sentence is part of the translation file.
The operation that replaces a part of a localized line with an arbitrary information from the game is called interpolation.
Some lines contain interpolation _markers_, which are special strings that the game recognizes and replaces with meaningful data at runtime.

### Example:
```yaml
  - Category: RACE
    Lines:
      LAP: Lap {0}/{1}
```

Here, the `{0}` and the `{1}` will be replaced by the current and total lap numbers respectively. 
Interpolation markers are always of the form `{number}`.

::: warning
You should never add interpolation markers to a line that doesn't feature any, or remove interpolation markers from a line that is supposed to have them - this will lead to unpredictable behaviour and possible game instability.
:::

## Example
Here is a short example of structure of a japanese localization file. Remember that you can take a look at all the current localization files in the `LOCALZTN/` folder, in the basegame soft data directory.

```yaml
Version: 1
ISO6392Name: jap
Revisions:
- Revision: 1
  Categories:
  - Category: FRONTEND
    Lines:
      PLEASE_INPUT_TOKEN: '『LouveSystems』のトークンを入力 '
      ENTER_LOGIN_PASSWORD: ユーザー名とパスワードを入力してください。
      MAIN_MENU_SELECTION: セレクション
      EXIT_PROGRAM: ゲームを終了
      GOTO_RACE: プライ
      MAKE_TRACK: トラック
      OPTIONS: オプション
      CUSTOMIZE_CAR: しゃこ
 - Category: FILE_EXPLORER
    Lines:
      SAVE_MODE_TITLE: セーブ
      LOAD_MODE_TITLE: ロード
      PICK_MODE_TITLE: セレクション
 - Category: TRACK_EDITOR
    Lines:
      DESTROY_TRACK_FOR_REAL: トラックを破壊したいですか？
      DEFAULT_TRACK_NAME: トラック#{0}
```

## Missing lines
To know which lines you should add to your localization file for it to cover the entirety of the game, please take a look at the english `LANGUAGE.YML` file from TrackMasters' soft data path. 
The virtual path for this file is `LOCALZTN/English/LANGUAGE.YML`

If a line is required by the game and is not present in your localization file, it will be replaced by an error indicating which category or identifier was expected and missing.