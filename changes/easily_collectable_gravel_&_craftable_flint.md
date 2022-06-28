Gravel now always drops itself and never drops Flint. Adds a recipe to craft Gravel into Flint. The recipe is added to the player's recipe book once they collect a piece of Gravel.

Original file(s):

gravel.json
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

New file(s):
- [gravel.json](../src/data/minecraft/loot_tables/blocks/gravel.json)
- [flint.json (Recipe)](../src/data/prime_tweaks/recipes/flint.json)
- [flint.json (Advancement)](../src/data/prime_tweaks/advancements/recipes/misc/flint.json)
