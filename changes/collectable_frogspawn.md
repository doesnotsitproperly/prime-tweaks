Original:

```json
{
    "type": "minecraft:block"
}
```

New:

```json
{
    "type": "minecraft:block",
    "pools": [
        {
            "bonus_rolls": 0.0,
            "conditions": [
                {
                    "condition": "minecraft:survives_explosion"
                }
            ],
            "entries": [
                {
                    "type": "minecraft:item",
                    "name": "minecraft:frogspawn"
                }
            ],
            "rolls": 1.0
        }
    ]
}
```