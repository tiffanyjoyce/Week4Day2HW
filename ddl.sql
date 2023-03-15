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