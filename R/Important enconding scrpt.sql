SET NAMES 'utf8mb4';
SET CHARACTER SET utf8mb4;
SET character_set_database=utf8mb4 utf8mb4;
set collation_server=utf8mb4_general_ci
set character_set_client  = utf8mb4
set character_set_connection  = utf8mb4

set character_set_results = utf8mb4


collation_connection	utf8mb4_general_ci
collation_database	utf8mb4_general_ci
collation_server	utf8mb4_general_ci

SELECT
  `tables`.`TABLE_NAME`,
  `collations`.`character_set_name`
FROM
  `information_schema`.`TABLES` AS `tables`,
  `information_schema`.`COLLATION_CHARACTER_SET_APPLICABILITY` AS `collations`
WHERE
  `tables`.`table_schema` = DATABASE()
  AND `collations`.`collation_name` = `tables`.`table_collation`
;

show variables like '%colla%';
show variables like '%charac%';
character_set_client	utf8mb4
character_set_connection	utf8mb4
character_set_database	utf8mb4
character_set_filesystem	binary
character_set_results	utf8mb4
character_set_server	utf8mb4
character_set_system	utf8
character_sets_dir	C:\Program Files\MySQL\MySQL Server 5.7\share\charsets\


character_set_client,character_set_connection,character_set_results