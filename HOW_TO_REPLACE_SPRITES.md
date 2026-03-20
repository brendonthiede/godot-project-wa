# 🎨 How to Replace Sprites With Your Piskel Art

All 13 animations are pre-wired. Just replace the placeholder PNGs in
`sprites/player/` with your Piskel exports using the exact same filenames.

All sprites are **single-row, 48×48px per frame**.

---

## Piskel Export Settings Per Animation

Export → PNG tab → Resolution: 48×48, Rows: 1, Columns: match below

| Replace this file              | Frames | Columns | PNG size      |
|-------------------------------|--------|---------|---------------|
| character_idle.png            | 6      | 6       | 288 × 48 px   |
| character_walk.png            | 8      | 8       | 384 × 48 px   |
| character_run.png             | 8      | 8       | 384 × 48 px   |
| character_roll.png            | 11     | 11      | 528 × 48 px   |
| character_jump.png            | 4      | 4       | 192 × 48 px   |
| character_air-spin.png        | 8      | 8       | 384 × 48 px   |
| character_land.png            | 3      | 3       | 144 × 48 px   |
| character_crouch-idle.png     | 4      | 4       | 192 × 48 px   |
| character_crouch-walk.png     | 11     | 11      | 528 × 48 px   |
| character_ledge-climb.png     | 5      | 5       | 240 × 48 px   |
| character_ledge-grab.png      | 1      | 1       | 48 × 48 px    |
| character_wall-slide.png      | 2      | 2       | 96 × 48 px    |
| character_wall-land.png       | 1      | 1       | 48 × 48 px    |

---

## Steps

1. Open the original PNG from the Deymoon pack in Piskel (File → Open → From disk)
2. Draw your art over the existing frames — use them as pose guides
3. Export → PNG → Rows: 1, Columns: match table → Download
4. Rename your file to match exactly (e.g. `character_walk.png`)
5. In Godot FileSystem, drag your PNG onto the matching file in `sprites/player/`
6. Click **Replace** — your art shows up immediately, no scene editing needed!

---

## Controls

| Key            | Action                   |
|----------------|--------------------------|
| A / ←          | Move left                |
| D / →          | Move right               |
| Space / ↑      | Jump                     |
| Space (in air) | Double jump (air spin)   |
| S / ↓          | Crouch                   |
| Shift          | Roll                     |
| Jump into wall | Wall slide → wall land   |
