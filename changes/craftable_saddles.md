Adds a recipe for Saddles. The recipe is added to the player's recipe book once they collect a piece of Leather.

```json
{
    "type": "minecraft:crafting_shaped",
    "key": {
        "!": {
            "item": "minecraft:leather"
        },
        "@": {
            "item": "minecraft:string"
        },
        "#": {
            "item": "minecraft:iron_ingot"
        }
    },
    "pattern": [
        "!!!",
        "@ @",
        "# #"
    ],
    "result": {
        "item": "minecraft:saddle"
    }
}
```
