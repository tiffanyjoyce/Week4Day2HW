INSERT INTO customer(
    customer_id,
    age,
    email
) VALUES (
    101,
    20,
    'shcluster@gmail.com'
),(
    102,
    17,
    'larelm@yahoo.com'
),(
    103,
    55,
    'racheltuh@hotmail.com'
),(
    104,
    47,
    'brucehan@gmail.com'
)

SELECT *
FROM customer;

INSERT INTO ticket(
    ticket_id,
    price,
    movie_title,
    customer_id
) VALUES (
    10253824,
    14.57,
    'Avatar: The Way of Water',
    101
),(
    14983289,
    14.57,
    'Creed III',
    102
),(
    12984098,
    14.57,
    'Avatar: The Way of Water',
    103
),(
    12849809,
    12.45,
    'Cocaine Bear',
    104
)

SELECT * FROM ticket;

INSERT INTO movie(
    movie_title,
    m_description,
    rating
) VALUES (
    'Avatar: The Way of Water',
    'Jake Sully and Neytiri have formed a family and are doing everything to stay together. However, they must leave their...',
    'PG-13'
), (
    'Cocaine Bear',
    'After a 500 pound black bear consumes a significant amount od cocaine and embarks on a drug fueled rampage...',
    'R'
),(
    'Creed III',
    'Still dominating the boxing world, Adonis Creed is thriving in his career and family life. When Damian, a childhood friend...',
    'PG-13'
)

SELECT * FROM movie;

INSERT INTO concessions(
    product_id,
    product_name,
    price
) VALUES (
    3434875,
    'Small Popcorn',
    20.00
),(
    3498709,
    'Large Popcorn',
    25.00
),(
    2983479,
    'M&Ms',
    5.00
),(
    2938479,
    'Junior Mints',
    5.00
),(
    3940990,
    'Nachos',
    7.89
),(
    8970908,
    'Regular Soft Drink',
    6.67
),(
    9785090,
    'Large Soft Drink',
    7.67
),(
    9829880,
    'Skittles',
    5.00
)

SELECT * FROM concessions;

INSERT INTO c_sales(
    sales_id,
    product_id,
    product,
    customer_id
) VALUES (
    0928030,
    8970908,
    'Reguler Soft Drink',
    102
),(
    0928031,
    9829880,
    'Skittles',
    102
),(
    5982309,
    3498709,
    'Large Popcorn',
    104
),(
    5982310,
    9785090,
    'Large Soft Drink',
    104
),(
    5982311,
    2938479,
    'Junior Mints',
    104
),(
    4209830,
    3940990,
    'Nachos',
    103
)

SELECT * FROM c_sales;