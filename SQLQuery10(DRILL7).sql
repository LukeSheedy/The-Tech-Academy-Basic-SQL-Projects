

/*REFERENCES TO THE CONTACT TABLE ID*/
CREATE TABLE tbl_name (
	name_id INT PRIMARY KEY  NOT NULL IDENTITY (1,1),
	name_fname VARCHAR(50) NOT NULL,
	name_lname VARCHAR(50) NOT NULL,
	name_contact INT NOT NULL CONSTRAINT fk_contact_id FOREIGN KEY REFERENCES tbl_contact(contact_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_contact (
	contact_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	contact_number VARCHAR(50) NOT NULL,
	contact_adress VARCHAR(50) NOT NULL
);

/*EXTRA TABLE REFRENCING BOTH KEYS IF NEED BEE*/
CREATE TABLE tbl_new (
	new_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	new_name INT NOT NULL CONSTRAINT fk_name_id FOREIGN KEY REFERENCES tbl_name(name_id) ON UPDATE CASCADE ON DELETE CASCADE,
	new_contact INT NOT NULL CONSTRAINT fk_contact_id FOREIGN KEY REFERENCES tbl_contact(contact_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_name
	(name_fname, name_lname,name_contact)
	VALUES
	('wallace','grommit',1),
	('little', 'deer',2),
	('wallace','grommit',1),
	('little', 'deer',2)
;


INSERT INTO tbl_contact
	(contact_number, contact_adress)
	VALUES 
	('701-254-8000', 'On top of the hill'),
	('385-569-8790','underneath bridge'),
	('701-254-8000', 'On top of the hill'),
	('385-569-8790','underneath bridge')
;

/* MAKING A BIG SHEET FOR BOTH TABLES*/
SELECT * FROM tbl_new

INSERT INTO tbl_new
			(new_name, new_contact)
			VALUES
			(1,1),
			(2,2),
			(3,3),
			(4,4)
;
SELECT * FROM tbl_name


/* the SELECT STATEMENT FOR BOTH QUERYS */

SELECT *
	FROM tbl_name 
	INNER JOIN tbl_contact ON contact_id = name_contact
	WHERE name_id = name_id
	;

/* the SELECT STATEMENT FOR BOTH QUERYS but refining only first/last/number/adress*/

SELECT name_fname, name_lname, contact_number, contact_adress
	FROM tbl_name 
	INNER JOIN tbl_contact ON contact_id = name_contact
	;

SELECT * FROM tbl_contact;
SELECT * FROM tbl_name
