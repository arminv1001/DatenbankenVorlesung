CREATE TABLE Projekt(
	ProjektID int NOT NULL,
    Projektbezeichnung varchar(255),
    Projektstatus int NOT NULL,
    Startdatum date,
    Abschlussdatum date,
    PRIMARY KEY (ProjektID),
    FOREIGN KEY (ProjektStatus) REFERENCES ProjektStatus (id)
);
CREATE TABLE ProjektStatus(
	id int NOT NULL,
    Bezeichnung varchar(50),
    primary key(id)
);
CREATE TABLE StatusMitarbeiter(
	id int NOT NULL,
    Bezeichnung varchar(50),
    primary key(id)
);
CREATE TABLE Mitarbeiterliste(
	MitarbeiterID int NOT NULL,
    ProjektID int NOT NULL,
    StatusID int NOT NULL,
    FOREIGN KEY (MitarbeiterID) REFERENCES Mitarbeiter(MitarbeiterID),
    FOREIGN KEY (ProjektID) REFERENCES Projekt (ProjektID),
    FOREIGN KEY (StautsID) REFERENCES StatusMitarbeiter(StatusID)
);
CREATE TABLE Mitarbeiter(
	MitarbeiterID int NOT NULL,
    Vorname varchar(25) NOT NULL,
    Nachname varchar(25) NOT NULL,
    ResortID int NOT NULL,
    Projektleiter boolean NOT NULL,
    PRIMARY KEY (MitarbeiterID),
    FOREIGN KEY (ProjektID) REFERENCES Projekt (ProjektID),
    FOREIGN KEY (ResortID) REFERENCES Resort (ResortID)
);
CREATE TABLE Resort(
	ResortID int NOT NULL,
    Bezeichnung varchar(255),
    StadtID int NOT NULL,
    PRIMARY KEY (ResortID),
    FOREIGN KEY (StadtID) REFERENCES Resort(StadtID)
);
CREATE TABLE Stadt(
	StadtID int NOT NULL,
    Stadt varchar(255),
    PRIMARY KEY(StadtID)
);
