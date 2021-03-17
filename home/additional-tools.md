<!-- TITLE:Additional tools -->

This page contains a few tools related to TrackMasters.

# Track Inspector (INSPECTR.EXE)
The Track Inspector can open any TrackMasters track and display all of its metadata, aswell as the custom elements it contains and relies upon. This metadata most notably contains the scores, validity, version and author name. 

![track inspector.png](/_contents/tools/track%20inspector.png) 

This tool is fairly basic and can only be used to view data, and **cannot** modify the opened track file.
## Usage
To use the inspector, simply drag and drop any TrackMasters track inside the window. Only one file can be inspected at a time.

## Layout viewer
The layout viewer shows exactly what is written to the grid, for every layer (from ground to top, which is the third layer, for 4 layers in total). Every track element occupies exactly one cell, whatever size it is, and so the viewer will only show the cell they are written in as it is unaware of the size of each element.

![tracklayout.png](/_contents/tools/tracklayout.png)

The number shown in each written (blue) cell corresponds to the ID of the track element.
Custom elements have a different ID system and instead reference the name of the custom trackpart they correspond to, and therefore aren't represented in this grid.

The custom elements of a track can be shown by clicking the "View dependencies..." button.

## Download
The latest Track Inspector is normally inluded with the game files, in the root game folder. 
If you are missing the file for any reason however, you can download it here.

:::download /_contents/downloadable/INSPECTR.EXE :::
# Lego Stunt Rally track converter (LSRCONV.EXE)
This tool converts tracks from Lego Stunt Rally (.trk format) to the TrackMasters format. It produces .PNG files with a sample image.

![Track importer.png](/_contents/tools/Track%20importer.png)

## Usage
To use the converter, simply click "Select LSR track..." and browse to a valid .trk file. 

## Caveats
As LSR contains more and different track elements than TM, a lot of elements cannot be translated and are removed when converting from one format to the other.

The LSR starting line is also much tinier, as it accounts for less players (4) than TM (8). Therefore, the converted tracks are marked as `UNFINISHABLE` by the converter so that a manual edition in TM is required before playing on them.

On some tracks however, if standard 1x1 straight roads surround the starting line, the converter may remove one of them to make way for the TM Starting Line and lay it at the correct place. The track will however still be marked as `UNFINISHABLE` until it is opened in the TM editor and saved.

## Correspondance sheet
Here is the Lego Stunt Rally - TrackMasters correspondance sheet used in the **1.38 version** of TrackMasters. As new track parts get added to TrackMasters, this table might evolve.

| LSR ID (XID) | TM ID | DESCRIPTION |
| ---- | -------- | -------- |
|  0 | ARRIVAL_ID| Start/Finish |
|  1 | STRAIGHT_ROAD_ID| Straight |
|  2 | 8| Long Right Side Obstacle (1x2)
|  3 | 2| Small Corner |
|  4 | 7| Large Corner (2x2) |
|  5 | STRAIGHT_ROAD_WALLED_ID| Straight Walled |
|  6 | 9| Long Side-Sloped (1x3) |
|  7 | 13| Small Corner Walled |
|  8 | 10| Large Corner Walled (2x2) |
|  9 | STRAIGHT_ROAD_WALLED_ID| Bump Walled |
| 10 | 5| Slope Walled [Compensated with regular slope] |
| 11 | ABSENT| Figure 8 Ramps (1x3) |
| 12 | 11| Tunnel |
| 13 | ABSENT| Detour  |
| 14 | 26| Fan [Regular track piece] |
| 15 | ABSENT| Puddle (1x2) |
| 16 | ABSENT| Stunt (1x3) |
| 17 | ABSENT| Loop-de-loop (1x2) |
| 18 | 5| Boost Slope [Compensated with regular slope] |
| 19 | ABSENT| Timed Trap |
| 20 | ABSENT| Belt Track (2x1) |
| 21 | 12| 4-way Intersection |
| 22 | STRAIGHT_ROAD_ID| ?? |
| 23 | STRAIGHT_ROAD_ID| Right Obstacle (Ridges) |
| 24 | STRAIGHT_ROAD_ID| Left Obstacle (Boxes) |
| 25 | ABSENT| Cannon |
| 26 | BLOCK_ID| Height Block|
| 27 | BLOCK_ID| 2x Height Block |
| 28 | BLOCK_ID| 3x Height Block |
| 29 | 12| Intersection Light |
| 30 | 5| Slope |
| N/A | N/A | Super Steering Building (2x1) |
| 32 | 16| Turbo Building (2x1) |
| N/A | N/A | Mystery Building (2x1) |
| 34 | 21| Bumper Car Building (2x1) |
| 35 | 15| Splat Building (2x1) |
| N/A | N/A | Factory Building (2x2) (Different placement hitbox) |
| N/A | N/A | Normal Building 1 |
| 38 | 22| Freeze Ray Building (2x1) |
| N/A | N/A | Normal Building 2 |
| N/A | N/A | Normal Building 3 |
| N/A | N/A | Normal Building 4 |
| N/A | N/A | Normal Building 5 |
| N/A | N/A | Normal Building 6 |
| N/A | N/A | Normal Building 7 (Unused Content!) |
| N/A | N/A | Normal Building 8 (Airport) |
| N/A | N/A | Normal Building 9 (Unused Content!) |
| N/A | N/A | Scenery 1 |
|48 | 25| Scenery 2 (Double Slope) |
| N/A | N/A | Scenery 3 (Sign) |
| N/A | N/A | Scenery 4 |
| N/A | N/A | Scenery 5 |
| N/A | N/A | Scenery 6 |
| N/A | N/A | Scenery 7 |
| N/A | N/A | Scenery 8 (Unused) |
| N/A | N/A | Scenery 9 |
| N/A | N/A | Scenery 10 |
| N/A | N/A | Literally Empty |
| N/A | N/A | Scenery 11 |
| N/A | N/A | Scenery 12 |
| N/A | N/A | Scenery 13 (Some green-ass sheet) |
| N/A | N/A | Scenery 14 (Boat) |
| N/A | N/A | Scenery 15 (Unused) |
| 63 | 23| Scenery 16 (Unused) (Bush Slope) |
| N/A | N/A | Normal Building 10 (Radium’s Space Station) |
| N/A | N/A | Scenery 17 (Tree) |
| N/A | N/A | Scenery 18 (a goddamn hole) |
| N/A | N/A | Multiplayer scenery |
| N/A | N/A | Singleplayer scenery |
| 69 | BLOCK_ID| Height Block |
| 70 | STRAIGHT_ROAD_ID| Lamp Track |
| 71 | BLOCK_ID| Double Height Block (unused) |
| 72 | BLOCK_ID| Triple Height Block (unused) |
| 73 | ABSENT  | |

## Download
The latest LSR Converter is normally inluded with the game files, in the root game folder. 
If you are missing the file for any reason however, you can download it here.

:::download /_contents/downloadable/LSRCONV.EXE :::


