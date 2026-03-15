USE learning;


CREATE TABLE dataTypes (

  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier',

  int_value INT COMMENT 'Integer number',
  bigint_value BIGINT COMMENT 'Large integer',
  float_value FLOAT COMMENT 'Floating point number',
  double_value DOUBLE COMMENT 'Double precision number',
  decimal_value DECIMAL(10,2) COMMENT 'Exact decimal value',

  char_value CHAR(5) COMMENT 'Fixed length string',
  varchar_value VARCHAR(100) COMMENT 'Variable length string',
  text_value TEXT COMMENT 'Long text',

  date_value DATE COMMENT 'Date',
  time_value TIME COMMENT 'Time',
  datetime_value DATETIME COMMENT 'Date and time',
  timestamp_value TIMESTAMP NULL COMMENT 'Timestamp',
  year_value YEAR COMMENT 'Year',

  boolean_value BOOLEAN COMMENT 'Boolean value',
  json_value JSON COMMENT 'JSON data',
  enum_value ENUM('small','medium','large') COMMENT 'Enum values',
  blob_value BLOB COMMENT 'Binary data'

);

DESC dataTypes;