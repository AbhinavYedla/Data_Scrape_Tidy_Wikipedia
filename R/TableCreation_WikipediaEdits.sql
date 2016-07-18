CREATE TABLE IF NOT EXISTS wikiedits_africa (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date date NOT NULL,
    total_edits INTEGER NOT NULL,
    ip_edits INTEGER NOT NULL,
    minor_edits INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8;

CREATE TABLE IF NOT EXISTS wikiedits_asia (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date date NOT NULL,
    total_edits INTEGER NOT NULL,
    ip_edits INTEGER NOT NULL,
    minor_edits INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS wikiedits_europe (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date date NOT NULL,
    total_edits INTEGER NOT NULL,
    ip_edits INTEGER NOT NULL,
    minor_edits INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS wikiedits_north_america (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date date NOT NULL,
    total_edits INTEGER NOT NULL,
    ip_edits INTEGER NOT NULL,
    minor_edits INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS wikiedits_south_america (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date date NOT NULL,
    total_edits INTEGER NOT NULL,
    ip_edits INTEGER NOT NULL,
    minor_edits INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;


CREATE TABLE IF NOT EXISTS wikiedits_oceania (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date date NOT NULL,
    total_edits INTEGER NOT NULL,
    ip_edits INTEGER NOT NULL,
    minor_edits INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;