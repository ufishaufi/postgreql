SELECT * FROM table name;

SELECT * FROM person;

SELECT col_name FROM person;

SELECT first_name FROM person;
SELECT first_name, last_name FROM person;


ORDER BY

SELECT * FROM person ORDER BY country_of_birth;
SELECT * FROM person ORDER BY country_of_birth ASC;
SELECT * FROM person ORDER BY country_of_birth DESC;
SELECT * FROM person ORDER BY id ASC;
SELECT * FROM person ORDER BY id DESC;

DISTINCT

SELECT DISTINCT country_of_birth FROM person BY country_of_birth;


WHERE Clause And AND

SELECT * FROM person WHERE gender = 'Female';
SELECT * FROM person WHERE gender = 'Female' AND country_of_birth = 'Poland';
SELECT * FROM person WHERE gender = 'Female' AND (country_of_birth = 'Poland' OR country_of_birth = 'China');
SELECT * FROM person WHERE gender = 'Female' AND (country_of_birth = 'Poland' OR country_of_birth = 'China') AND last_name = 'Pietersma'

Comparison Operators

SELECT 1 = 1;
SELECT 1 = 2;
SELECT 1 < 2;
SELECT 1 <= 2;
SELECT 1 >= 1;
SELECT 'SHAUFI' <> 'shaufi';

LIMIT, OFFSET, & FETCH

SELECT * FROM person LIMIT 10;

SELECT * FROM person OFFSET 5 LIMIT 5;
SELECT * FROM person OFFSET 5 FETCH FIRST 5 ROW ONLY;

IN

SELECT * FROM person WHERE country_of_birth IN ('China', 'Brazil', 'France');

BETWEEN

SELECT * FROM person WHERE date_of_birth BETWEEN DATE '2000-01-01' AND '2015-01-01';

LIKE, ILIKE, NOT LIKE, NOT ILIKE

SELECT * FROM person WHERE email LIKE '%.com';
SELECT * FROM person WHERE email LIKE '%@google.%';

SELECT * FROM person WHERE country_of_birth ILIKE '%p';

SELECT * FROM person WHERE email NOT LIKE '%.com';

SELECT * FROM person WHERE country_of_birth NOT ILIKE '%p';

GROUP BY

SELECT country_of_birth FROM person GROUP BY country_of_birth;
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth;
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth ORDER BY country_of_birth;

GROUP BY HAVING

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 5 ORDER BY country_of_birth; 

MAX, MIN, AVERAGE

SELECT MAX(price) FROM car;
SELECT MIN(price) FROM car;
SELECT AVG(price) FROM car;
SELECT ROUND(AVG(price)) FROM car;
SELECT make, model, MAX(price) FROM car GROUP BY make, model;
SELECT make, model, MIN(price) FROM car GROUP BY make, model;
SELECT make, MAX(price) FROM car GROUP BY make;
SELECT make, MIN(price) FROM car GROUP BY make;
SELECT make, AVG(price) FROM car GROUP BY make;
SELECT make, ROUND(AVG(price)) FROM car GROUP BY make;

SUM

SELECT SUM(price) FROM car;
SELECT make, SUM(price) FROM car GROUP BY make;

BASICS OF ARITHMETIC OPERATORS

SELECT 10 + 2;
SELECT 10 - 2;
SELECT 10 * 2;
SELECT 10 * 2 + 8;
SELECT 10 / 2;
SELECT 10 ^2;
SELECT 10 ^3;
SELECT 5!;
SELECT 10 % 3;

ARITHMETIC OPERATORS ROUND

SELECT id, make, model, price, ROUND(price * .10, 2) FROM car;
SELECT id, make, model, price, ROUND(price * .10, 2) ROUND(price - (price * .10) FROM car;

ALIAS

SELECT id, make, model, price AS original_price, ROUND(price * .10, 2) AS ten_percent_value, ROUND(price - (price * .10) AS discount_after_ten_percent  FROM car;

COALESCE

SELECT COALESCE(1);
SELECT COALESCE(1) AS number;
SELECT COALESCE(null, 2) AS number;
SELECT COALESCE(null, null, 1, 10) AS number;
SELECT COALESCE(email, 'Email not provided') FROM person;

NULLIF

SELECT NULLIF(10, 10);
SELECT NULLIF(10, 19);
SELECT 10 / NULLIF(2, 9);
SELECT 10 / NULLIF(0, 0);
SELECT COALESCE(10 / NULLIF(0, 0), 0);

TIMESTAMP and DATE

SELECT NOW();
SELECT NOW()::DATE;
SELECT NOW()::TIME;

ADDING AND SUBSTRACTING with DATE

SELECT NOW(): - INTERVAL '10 YEARS';
SELECT NOW(): - INTERVAL '10 MONTHS';
SELECT NOW(): - INTERVAL '10 DAY';
SELECT NOW(): - INTERVAL '10 DAYS';
SELECT NOW(): + INTERVAL '10 DAYS';
SELECT NOW()::DATE + INTERVAL '10 MONTHS';
SELECT NOW()::DATE - INTERVAL '10 MONTHS')::DATE;

EXTRACTING FIELDS from TIMESTAMP

SELECT EXTRACT(YEARS FROM NOW());
SELECT EXTRACT(MONTHS FROM NOW());
SELECT EXTRACT(DAY FROM NOW());
SELECT EXTRACT(DOW FROM NOW());
SELECT EXTRACT(CENTURY FROM NOW());

AGE FUNCTION

SELECT first_name, last_name, gender, country_of_birth, date_of_birth, AGE(NOW(), date_of_birth) AS age FROM person;

PRIMARY KEY

ALTER TABLE person ADD PRIMARY KEY(column1, column2);
ALTER TABLE person ADD PRIMARY KEY(id);

UNIQUE CONSTRAINT

ALTER TABLE person ADD CONSTRAINT unique_email_address UNIQUE(email);
ALTER TABLE person ADD UNIQUE(email);

CHECK CONSTRAINT

ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK(gender= 'female' OR gender = 'Male');
