USE [db_zooTest2]
GO


/* DRILL 1*/

SELECT * FROM tbl_habitat

/*DRILL 2*/
SELECT species_name
	FROM tbl_species WHERE species_order = 3;

/*DRILL 3*/
SELECT nutrition_type
	FROM tbl_nutrition WHERE nutrition_cost >= 0  AND nutrition_cost <= 600 ;

/*DRILL 4*/
SELECT
	a1.species_name, a2.nutrition_id
	FROM tbl_species a1 
	INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
	WHERE species_nutrition BETWEEN 2202 AND 2206
	;

/*DRILL 5*/
SELECT
	a1.species_name as 'Species Name:', a3.nutrition_type as 'Nutrition Type:'
	FROM tbl_species a1
	INNER JOIN tbl_nutrition a3 ON a3.nutrition_id = a1.species_nutrition
;

/*DRILL 6*/

SELECT * FROM tbl_species 
SELECT * FROM tbl_specialist
SELECT * FROM tbl_care


SELECT 
	species_name as 'Species Name:', specialist_fname  as 'Specialist First:',specialist_lname  as 'Specialist Last:',
	specialist_contact as 'Specialist Contact:' 
	FROM tbl_care
	INNER JOIN tbl_species ON species_care = care_id
	INNER JOIN tbl_specialist ON specialist_id = care_specialist
	WHERE species_name = 'penguin'
;
	
