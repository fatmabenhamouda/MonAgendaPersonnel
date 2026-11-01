
-- =====================================================
-- MonAgendaPersonnel
-- Oracle Database - Table creation script
-- =====================================================

CREATE TABLE EVENEMENTS (
    ID NUMBER GENERATED ALWAYS AS IDENTITY
        (START WITH 1 INCREMENT BY 1)
        NOT NULL,

    TITRE VARCHAR2(100) NOT NULL,
    DATE_EVENEMENT DATE NOT NULL,
    HEURE_EVENEMENT DATE NOT NULL,
    DESCRIPTION VARCHAR2(500),
    TYPE_EVENEMENT VARCHAR2(30) NOT NULL,

    IMPORTANT CHAR(1) DEFAULT '0',
    PRIORITE VARCHAR2(10) DEFAULT 'MOYENNE',

    CONSTRAINT PK_EVENEMENTS PRIMARY KEY (ID),

    CONSTRAINT CK_TYPE_EVENEMENT
        CHECK (TYPE_EVENEMENT IN (
            'REUNION',
            'RENDEZ_VOUS',
            'ANNIVERSAIRE',
            'RAPPEL',
            'CONGE',
            'COURS',
            'AUTRE'
        )),

    CONSTRAINT CK_IMPORTANT
        CHECK (IMPORTANT IN ('0', '1')),

    CONSTRAINT CK_PRIORITE
        CHECK (PRIORITE IN ('HAUTE', 'MOYENNE', 'BASSE'))
);
