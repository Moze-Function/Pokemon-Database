USE pokemon_db;
-- ============================================================ CODE DEMO ====================================================================

SELECT pokedex_num, pokemon_name, region_name, type_name, sub_type_name,  special_type, evolves, hp, attack, defence, special_atk, special_def, speed, height_m, weight_kg, ability, ability_effect, sub_ability, sub_ability_effect, hidden_ability, hidden_ability_effect
FROM PokeRefs INNER JOIN Pokemon
ON Pokerefs.pokemon_id = Pokemon.pokemon_id
INNER JOIN PokeTypes
ON Pokerefs.type_id = PokeTypes.type_id
INNER JOIN SubPokeTypes
ON Pokerefs.sub_type_id = SubPokeTypes.sub_type_id
INNER JOIN Regions
ON Pokerefs.region_id = Regions.region_id
INNER JOIN Abilities
ON Pokerefs.ability_id = Abilities.ability_id
INNER JOIN SubAbilities
ON Pokerefs.sub_ability_id = SubAbilities.sub_ability_id
INNER JOIN HiddenAbilities
ON Pokerefs.hidden_ability_id = HiddenAbilities.hidden_ability_id
INNER JOIN Stats
ON Pokerefs.stat_id = Stats.stat_id;
-- ----------------------------------------- INPUT -------------------------------------------------------------
-- WHERE ability LIKE "AR%";
-- WHERE pokedex_num LIKE "479%";


-- SELECT *
-- FROM Abilities
-- WHERE ability LIKE '%';
