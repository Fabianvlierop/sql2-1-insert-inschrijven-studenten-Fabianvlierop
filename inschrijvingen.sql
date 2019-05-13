USE `lo8e_sql2`;

SELECT studenten.actief, studenten.ov_nummer, CONCAT(studenten.voornaam, ' ', studenten.tussenvoegsel, ' ', studenten.achternaam) AS volledige_naam, 
klassen.klas_code, klassen.cohort, CONCAT(docenten.voorletters, ' ', docenten.tussenvoegsel, ' ', docenten.achternaam) AS slb_naam 
FROM studenten
LEFT JOIN klassen_studenten ON klassen_studenten.ov_nummer = studenten.ov_nummer
LEFT JOIN klassen ON klassen.klas_code = klassen_studenten.klas_code
LEFT JOIN docenten ON docenten.docent_code = klassen.slb_code
WHERE studenten.actief = 1
ORDER BY klassen.klas_code, studenten.achternaam ASC;