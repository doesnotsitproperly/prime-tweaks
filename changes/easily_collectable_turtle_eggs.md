Makes it possible to collect Turtle Eggs without a Silk Touch-enchanted tool. No tools are required.

Original file(s):

turtle_egg.json
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

New file(s):
- [turtle_egg.json](../src/data/minecraft/loot_tables/blocks/turtle_egg.json)
