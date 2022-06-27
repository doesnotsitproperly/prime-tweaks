Makes Endermen always drop at least one Ender Pearl.

Original:

```json
{
    "type": "minecraft:entity",
    "pools": [
        {
            "bonus_rolls": 0.0,
            "entries": [
                {
                    "type": "minecraft:item",
                    "functions": [
                        {
                            "add": false,
                            "count": {
                                "type": "minecraft:uniform",
                                "max": 1.0,
                                "min": 0.0
                            },
                            "function": "minecraft:set_count"
                        },
                        {
                            "count": {
                                "type": "minecraft:uniform",
                                "max": 1.0,
                                "min": 0.0
                            },
                            "function": "minecraft:looting_enchant"
                        }
                    ],
                    "name": "minecraft:ender_pearl"
                }
            ],
            "rolls": 1.0
        }
    ]
}
```

New:

```json
{
    "type": "minecraft:entity",
    "pools": [
        {
            "bonus_rolls": 0.0,
            "entries": [
                {
                    "type": "minecraft:item",
                    "functions": [
                        {
                            "add": false,
                            "count": 1.0,
                            "function": "minecraft:set_count"
                        },
                        {
                            "count": {
                                "type": "minecraft:uniform",
                                "max": 1.0,
                                "min": 0.0
                            },
                            "function": "minecraft:looting_enchant"
                        }
                    ],
                    "name": "minecraft:ender_pearl"
                }
            ],
            "rolls": 1.0
        }
    ]
}
```
