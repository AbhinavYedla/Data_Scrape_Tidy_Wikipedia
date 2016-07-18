CREATE TABLE IF NOT EXISTS wikiviews_africa (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date DATE NOT NULL,
    views INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS wikiviews_asia (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date DATE NOT NULL,
    views INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS wikiviews_europe (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date DATE NOT NULL,
    views INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS wikiviews_north_america (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date DATE NOT NULL,
    views INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS wikiviews_south_america (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date DATE NOT NULL,
    views INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;


CREATE TABLE IF NOT EXISTS wikiviews_oceania (
    country VARCHAR(100) NOT NULL,
    language_short_code VARCHAR(25) NOT NULL,
    date DATE NOT NULL,
    views INTEGER NOT NULL,
    PRIMARY KEY (country , language_short_code , date)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;