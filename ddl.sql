CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    email VARCHAR(200),
    age INTEGER
)
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    price NUMERIC(4,2),
    movie_title VARCHAR(100),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)
CREATE TABLE movie(
    movie_title VARCHAR(100) PRIMARY KEY,
    m_description VARCHAR(200),
    rating VARCHAR(5)
)
ALTER TABLE ticket
ADD FOREIGN KEY (movie_title) REFERENCES movie(movie_title);

SELECT *
FROM ticket

CREATE TABLE concessions(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC(4,2),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE c_sales(
    sales_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    product_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES concessions(product_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

ALTER TABLE concessions
DROP COLUMN customer_id;

SELECT * FROM concessions

ALTER TABLE c_sales
DROP COLUMN product_name;

ALTER TABLE c_sales
ADD COLUMN product VARCHAR(100);