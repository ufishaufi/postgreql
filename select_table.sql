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