USE [db_zooTest2]
GO

SELECT * FROM tbl_habitat

SELECT species_name
	FROM tbl_species WHERE species_order = 3;


SELECT nutrition_type
	FROM tbl_nutrition WHERE nutrition_cost >= 0  AND nutrition_cost <= 600 ;

SELECT
	a1.species_name, a2.nutrition_id
	FROM tbl_species a1 
	INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
	WHERE species_nutrition BETWEEN 2202 AND 2206
	;

SELECT
	a1.species_name, a2.nutrition_id
	FROM tbl_species a1 
	INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
	WHERE species_nutrition BETWEEN 2202 AND 2206
	;


SELECT
	a1.species_name as 'Species Name:', a2.habitat_type as 'Habitat:', a2.habitat_cost as 'Monthly cost:',
	a3.nutrition_type as 'Nutrition Type:', a3.nutrition_cost 'Monthly cost:'
	FROM tbl_species a1
	INNER JOIN tbl_habitat a2 ON a2.habitat_id = a1.species_habitat
	INNER JOIN tbl_nutrition a3 ON a3.nutrition_id = a1.species_nutrition
	WHERE species_name = 'ghost bat'
;