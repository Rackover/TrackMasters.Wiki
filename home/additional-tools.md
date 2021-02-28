<!-- TITLE:Additional tools -->

This page contains a few tools related to TrackMasters.

# Track Inspector (INSPECTR.EXE)

# Lego Stunt Rally track converter (LSRCONV.EXE)
![Screenshot 2021-02-28 234255.png](/_contents/tools/Screenshot%202021-02-28%20234255.png)

This tool converts tracks from Lego Stunt Rally (.trk format) to the TrackMasters format. It produces .PNG files with a sample image.

## Caveats
As LSR contains more and different track elements than TM, a lot of elements cannot be translated and are removed when converting from one format to the other.

The LSR starting line is also much tinier, as it accounts for less players (4) than TM (8). Therefore, the converted tracks are marked as `UNFINISHABLE` by the converter so that a manual edition in TM is required before playing on them.

On some tracks however, if standard 1x1 straight roads surround the starting line, the converter may remove one of them to make way for the TM Starting Line and lay it at the correct place. The track will however still be marked as `UNFINISHABLE` until it is opened in the TM editor and saved.

## Correspondance sheet
Here is the Lego Stunt Rally - TrackMasters correspondance sheet used in the** 1.38 version** of TrackMasters. As new track parts get added to TrackMasters, this table might evolve.

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
| 73 | ABSENT  |



