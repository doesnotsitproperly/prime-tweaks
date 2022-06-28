Makes it possible for Pigs to drop one more Porkchop.

Original file(s):

pig.json
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

New file(s):
- [pig.json](../src/data/minecraft/loot_tables/entities/pig.json)
