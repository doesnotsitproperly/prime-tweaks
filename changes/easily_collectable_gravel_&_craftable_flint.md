Original:

```json
{
    "type": "minecraft:block",
    "pools": [
        {
            "bonus_rolls": 0.0,
            "entries": [
                {
                    "type": "minecraft:alternatives",
                    "children": [
                        {
                            "type": "minecraft:item",
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
                            "name": "minecraft:gravel"
                        },
                        {
                            "type": "minecraft:alternatives",
                            "children": [
                                {
                                    "type": "minecraft:item",
                                    "conditions": [
                                        {
                                            "chances": [
                                                0.1,
                                                0.14285715,
                                                0.25,
                                                1.0
                                            ],
                                            "condition": "minecraft:table_bonus",
                                            "enchantment": "minecraft:fortune"
                                        }
                                    ],
                                    "name": "minecraft:flint"
                                },
                                {
                                    "type": "minecraft:item",
                                    "name": "minecraft:gravel"
                                }
                            ],
                            "conditions": [
                                {
                                    "condition": "minecraft:survives_explosion"
                                }
                            ]
                        }
                    ]
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
                    "name": "minecraft:gravel"
                }
            ],
            "rolls": 1.0
        }
    ]
}
```

```json
{
    "type": "minecraft:crafting_shapeless",
    "ingredients": [
        {
            "item": "minecraft:gravel"
        }
    ],
    "result": {
        "item": "minecraft:flint"
    }
}
```
