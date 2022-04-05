-- DROP TABLE `Armes`,`Héros`,`Competences`;-- Pour effecer les table et les refaires

CREATE TABLE Armes --creer la table Arme
(`ID` tinyint(1) NOT NULL, -- la valeur ID ne peut pas être NULL (obliger de mettre qqch)
`HerosID` tinyint(1) NOT NULL,-- la valeur HerosID ne peut pas être NULL (obliger de mettre qqch)
`Nom` varchar(50) NOT NULL,
`Type` varchar(5) NOT NULL,
`Degat` tinyint(2) NOT NULL
    );
-- Les valeurs qui sont définis en "NOT NULL" ne peuvent pas être null (vide)
-- Elle doivent obligatoirement être nommé dans les INSERT INTO et leur donner une valeur.
-- ceci seulent quand c'est définis en "NOT NULL"

CREATE TABLE Heros --creer la table Héros
(`ID` tinyint(1) NOT NULL,
`Nom` varchar(50) NOT NULL,
`PV` tinyint(2) NOT NULL,
`Bonus` tinyint(2) NOT NULL,
`Defense` tinyint(2) NOT NULL,
`ArmeEnMain` tinyint(2) DEFAULT NULL,
`Statut` varchar(100) NOT NULL,
`Immunite` varchar(20) NOT NULL
);
CREATE TABLE Competences --creer la table Competences
(`ID` tinyint(1) NOT NULL,
`Type` ENUM('Statut', 'PV', 'Defense','Bonus', 'ArmeEnMain', 'Immunite'),
`Effet` varchar(50)
);

-- Insère dans la table Arme des noms d'armes 
--dans la colonne arme et des dégats dans la colonne dégats
    
-- si une valeur est requise dans tout les champs pas besoin de nommer les 
--les colonnes seul les valeurs sont nécéssaires.
    --INSERT INTO Armes

    INSERT INTO Armes (ID, HerosID, Nom,`Type`, Degat)
    VALUES ('0','0', 'batte en mousse','en mousse','0');

    INSERT INTO Armes
    VALUES ('0','0', 'Vanne de Liujen','destabilisante','10');

    INSERT INTO Armes
    VALUES ('0','0', 'Microsoft','effrayant','5');
    
    INSERT INTO Armes
    VALUES ('0','0', 'feuille','tranchant','5');

    INSERT INTO Armes
    VALUES ('0','0', 'caillou','contondant','5');

    INSERT INTO Armes
    VALUES ('0','0', 'ciseau','percant','5');

-- Modifie le ç de percant

    --UPDATE Armes --METTRE A JOUR Armes
    --SET Type='destabilisante'--METS destabilisante
    --WHERE Type='déstabilisante';-- OU il y a  déstabilisante

-- Modifie le ç de percant

    --UPDATE Armes --METTRE A JOUR Armes
    --SET Type='percant'--METS percant
    --WHERE Type='perçant';-- OU il y a  perçant

-- Insère dans la table Heros des noms d'Heros et des valeurs
--dans la colonne PV, Bonus,Defense,ArmeEnMain,Statut,Immunite

    INSERT INTO Heros (ID, Nom, PV, Bonus, Defense, ArmeEnMain, Statut, Immunite)
    VALUES ('0','Comar', '40','2','15','0','joyeux','en mousse');

    INSERT INTO Heros
    VALUES ('0','Kirderf', '35','14','5','0', 'combatif', 'null');

    INSERT INTO Heros
    VALUES ('0','Liujen', '45','5','8','0', 'Flegme', 'null');
--Insère dans la table competence des noms de compétence et des valeurs
--dans la colonne PV, Bonus,Defense,ArmeEnMain,Statut,Immunite
    INSERT INTO Competences (, , ,, )
    VALUES ('','', '','','');

    INSERT INTO Competences
    VALUES ('0','0', 'Vanne de Liujen','destabilisante','10');
