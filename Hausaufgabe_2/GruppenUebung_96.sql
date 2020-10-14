SELECT S.name, O.name
FROM schueler S 
INNER JOIN smartphones SP ON S.idSmartphones = SP.id
INNER JOIN orte O ON S.idOrte = O.id
WHERE SP.marke = "Apple"

SELECT L.name as "Lehrername", S.name as "Schülername"
FROM lehrer L 
INNER JOIN lehrer_hat_schueler LS ON L.id = LS.idLehrer
INNER JOIN schueler S ON LS.idSchueler = S.id

SELECT S.name, O.name
FROM lehrer L 
INNER JOIN lehrer_hat_schueler LS ON L.id = LS.idLehrer
INNER JOIN schueler S ON LS.idSchueler = S.id
INNER JOIN orte O ON S.idOrte = O.id
WHERE l.name = "Maier"

SELECT S.name, O.name, SP.marke
FROM schueler S 
INNER JOIN smartphones SP ON S.idSmartphones = SP.id
INNER JOIN orte O ON S.idOrte = O.id
WHERE O.name = "Emmendingen"

SELECT S.name, O.name, L.name
FROM schueler S 
INNER JOIN smartphones SP ON S.idSmartphones = SP.id
INNER JOIN orte O ON S.idOrte = O.id
INNER JOIN lehrer_hat_schueler LS ON S.id = LS.idSchueler
INNER JOIN lehrer L ON LS.idLehrer = L.id
WHERE O.name = "Emmendingen" AND L.name = "Huber"