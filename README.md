A data pack for Minecraft (1.19) that includes several tweaks

- Collectable Frogspawn

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

- Craftable Mud

Original: Not applicable

New:

```json
    {
        "type": "minecraft:crafting_shaped",
        "key": {
            "!": {
                "tag": "prime_tweaks:dirt"
            },
            "@": {
                "item": "minecraft:water_bucket"
            }
        },
        "pattern": [
            "!!!",
            "!@!",
            "!!!"
        ],
        "result": {
            "count": 8,
            "item": "minecraft:mud"
        }
    }
```

- Craftable Saddles

Original: Not applicable

New:

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

- Easily collectable Gravel & craftable Flint

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

- Easily collectable Turtle Eggs

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

- More craftable Horse Armors

Original: Not applicable

New:

```json
    {
        "type": "minecraft:crafting_shaped",
        "key": {
            "!": {
                "item": "minecraft:iron_ingot"
            }
        },
        "pattern": [
            "! !",
            "!!!",
            "! !"
        ],
        "result": {
            "item": "minecraft:iron_horse_armor"
        }
    }
```

```json
    {
        "type": "minecraft:crafting_shaped",
        "key": {
            "!": {
                "item": "minecraft:gold_ingot"
            }
        },
        "pattern": [
            "! !",
            "!!!",
            "! !"
        ],
        "result": {
            "item": "minecraft:golden_horse_armor"
        }
    }
```

```json
    {
        "type": "minecraft:crafting_shaped",
        "key": {
            "!": {
                "item": "minecraft:diamond"
            }
        },
        "pattern": [
            "! !",
            "!!!",
            "! !"
        ],
        "result": {
            "item": "minecraft:diamond_horse_armor"
        }
    }
```

- Pigs drop more Porkchops

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
                                    "max": 3.0,
                                    "min": 1.0
                                },
                                "function": "minecraft:set_count"
                            },
                            {
                                "conditions": [
                                    {
                                        "condition": "minecraft:entity_properties",
                                        "entity": "this",
                                        "predicate": {
                                            "flags": {
                                                "is_on_fire": true
                                            }
                                        }
                                    }
                                ],
                                "function": "minecraft:furnace_smelt"
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
                        "name": "minecraft:porkchop"
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
                                "count": {
                                    "type": "minecraft:uniform",
                                    "max": 4.0,
                                    "min": 1.0
                                },
                                "function": "minecraft:set_count"
                            },
                            {
                                "conditions": [
                                    {
                                        "condition": "minecraft:entity_properties",
                                        "entity": "this",
                                        "predicate": {
                                            "flags": {
                                                "is_on_fire": true
                                            }
                                        }
                                    }
                                ],
                                "function": "minecraft:furnace_smelt"
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
                        "name": "minecraft:porkchop"
                    }
                ],
                "rolls": 1.0
            }
        ]
    }
```

- Smelt Rotten Flesh into Leather

Original: Not applicable

New:

```json
    {
        "type": "minecraft:smelting",
        "cookingtime": 200,
        "experience": 0.35,
        "ingredient": {
            "item": "minecraft:rotten_flesh"
        },
        "result": "minecraft:leather"
    }
```

Planned:
- Craftable Name Tags
- Craftable String
- Endermen always drop an Ender Pearl
