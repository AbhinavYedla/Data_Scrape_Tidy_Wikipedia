CREATE TABLE IF NOT EXISTS lang (
   language VARCHAR(100) default NULL,
   language_local VARCHAR(100) default NULL,
  language_short_code VARCHAR(25) NOT NULL,
  primary key(language_short_code)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;


CREATE TABLE IF NOT EXISTS wikiviews_africa (
   country VARCHAR(100) NOT NULL,
  language_short_code VARCHAR(25) NOT NULL,
  date DATE NOT NULL,
  views INt NOT NULL,
  primary key(country,language_short_code,date)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;

CREATE TABLE IF NOT EXISTS wikiviews_asia (
   country VARCHAR(100) NOT NULL,
  language_short_code VARCHAR(25) NOT NULL,
  date DATE NOT NULL,
  views INt NOT NULL,
  primary key(country,language_short_code,date)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;

CREATE TABLE IF NOT EXISTS wikiviews_europe (
   country VARCHAR(100) NOT NULL,
  language_short_code VARCHAR(25) NOT NULL,
  date DATE NOT NULL,
  views INt NOT NULL,
  primary key(country,language_short_code,date)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;

CREATE TABLE IF NOT EXISTS wikiviews_north_america (
   country VARCHAR(100) NOT NULL,
  language_short_code VARCHAR(25) NOT NULL,
  date DATE NOT NULL,
  views INt NOT NULL,
  primary key(country,language_short_code,date)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;

CREATE TABLE IF NOT EXISTS wikiviews_south_america (
   country VARCHAR(100) NOT NULL,
  language_short_code VARCHAR(25) NOT NULL,
  date DATE NOT NULL,
  views INt NOT NULL,
  primary key(country,language_short_code,date)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;


CREATE TABLE IF NOT EXISTS wikiviews_oceania (
   country VARCHAR(100) NOT NULL,
  language_short_code VARCHAR(25) NOT NULL,
  date DATE NOT NULL,
  views INt NOT NULL,
  primary key(country,language_short_code,date)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;