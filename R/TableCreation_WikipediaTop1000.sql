CREATE TABLE IF NOT EXISTS wikipedia_top1000 (
    page_title VARCHAR(150) NOT NULL,
    views INTEGER DEFAULT NULL,
    rank INTEGER DEFAULT NULL,
    date DATE NOT NULL,
    master_code INTEGER DEFAULT NULL,
    language VARCHAR(40) DEFAULT 'English',
    PRIMARY KEY (page_title , date , language)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4;

CREATE TABLE IF NOT EXISTS language_mapping (
   language VARCHAR(100) default NULL,
   language_local VARCHAR(100) default NULL,
  language_short_code VARCHAR(25) NOT NULL,
  primary key(language_short_code)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;