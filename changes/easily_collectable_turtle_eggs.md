Makes it possible to collect Turtle Eggs without a Silk Touch-enchanted tool. No tools are required.

Original:

```json
{
    "type": "minecraft:block",
    "pools": [
        {
            "bonus_rolls": 0.0,
            "conditions": [
                {
                    "condition": "minecraft:match_tool",
                    "predicate": {
                        "enchantments": [
                            {
                                "enchantment": "minecraft:silk_touch",
                                "levels": {
                                    "min": 1
                                }
                            }
                        ]
                    }
                }
            ],
            "entries": [
                {
                    "type": "minecraft:item",
                    "name": "minecraft:turtle_egg"
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
                    "name": "minecraft:turtle_egg"
                }
            ],
            "rolls": 1.0
        }
    ]
}
```
