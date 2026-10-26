CREATE DATABASE IF NOT EXISTS controle_fronteira_rfb
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE controle_fronteira_rfb;

-- Para códigos e nomes únicos / For unique name and code number 
CREATE TABLE countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code CHAR(3) NOT NULL UNIQUE,
    name VARCHAR(80) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- Data de nascimento válida & nacionalidade / Nationality & valid birth date
CREATE TABLE travelers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(120) NOT NULL,
    birth_date DATE NOT NULL,
    nationality_country_id INT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_traveler_nationality
        FOREIGN KEY (nationality_country_id)
        REFERENCES countries(id)
        ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE documents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    traveler_id INT NOT NULL,
    document_type VARCHAR(30) NOT NULL,
    document_number VARCHAR(40) NOT NULL,
    issuing_country_id INT NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,

    CONSTRAINT uq_document
        UNIQUE (issuing_country_id, document_type, document_number),

    CONSTRAINT chk_document_dates
        CHECK (expiry_date > issue_date),

    CONSTRAINT fk_document_traveler
        FOREIGN KEY (traveler_id)
        REFERENCES travelers(id)
        ON DELETE RESTRICT,

    CONSTRAINT fk_document_country
        FOREIGN KEY (issuing_country_id)
        REFERENCES countries(id)
        ON DELETE RESTRICT
) ENGINE=InnoDB;