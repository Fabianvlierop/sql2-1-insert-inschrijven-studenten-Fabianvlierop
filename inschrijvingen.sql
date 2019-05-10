USE `lo8e_sql2`;

UPDATE studenten 
SET actief = 0
WHERE inschrijvings_datum = '2017-01-01';