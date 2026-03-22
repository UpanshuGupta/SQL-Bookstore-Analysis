SELECT * FROM books;
SELECT * FROM Customers;
SELECT * FROM Orders;

--                                     Basic Queries
-- 1 Retrieve all books in the Finance genre
SELECT * FROM books
where genre = 'Finance';

-- 2 Finding books published after the year 1950
SELECT * FROM books
where published_year > 1950;

-- 3 Customers from chicago
SELECT * FROM Customers
where city = 'Chicago';

-- 4 Orders placed in Jan
SELECT * FROM Orders
where order_date between '2024-01-10' and '2024-01-30';

-- 5 Retrieve total stock of book avail
SELECT SUM(stock) as  total_stock
from books;

-- 6 Details of the most expensive book
SELECT * FROM books
order by price desc
limit 1;

-- 7 Showing customers who order more than 1 quantity
SELECT c.name , c.city , SUM(o.quantity) as total_quantity
FROM Customers as c
JOIN Orders o
ON c.customer_ID = o.customer_ID
GROUP BY c.name,c.city
HAVING SUM(O.quantity)>=2;

-- 8 Orders where total amount exceeds 700
SELECT * FROM Orders
where total_amount>700
ORDER BY total_amount DESC ;

-- 9 List all genre avail in books
SELECT DISTINCT genre 
FROM books;

-- 10 Finding book with lowest stock
SELECT* FROM books
order by stock asc
limit 1;

-- 11 Calculating total revenue generated From all orders
Select SUM(total_amount) as revenue
from orders;


--                            Advance Queries

-- 1 Retrieve total number of books sold for each genre
	SELECT b.genre,SUM(o.quantity) as total_sold
	FROM books as b
	left join orders o
	on b.book_ID = o.book_ID
	group by b.genre;

-- 2 Find avg price of books in the FICTION genre
	SELECT AVG(price) as avg_price
	FROM books
	where genre = 'Fiction';

-- 3 Customers who palced atleast 2 orders
	SELECT customer_ID, COUNT(order_id) AS total_orders
	FROM Orders 
	group by customer_ID
	having COUNT(Order_id)>=2;

-- 4 Finding most frequently order book
	SELECT o.book_id,b.title, COUNT(order_id) as order_count
	FROM Orders as o
	join books as b
	on o.book_id = b.book_id
	GROUP BY o.book_id, b.title
	ORDER BY order_count DESC
	limit 1;


-- 5 Show top 3 most expensive book of finance
	SELECT *
	FROM books
	WHERE genre = 'Finance'
	ORDER BY price DESC
	LIMIT 3;

	
-- 6 Retreive total quantity of books sold by each author
	SELECT b.author, SUM(o.quantity) as total_sale
	FROM books b
	JOIN Orders o
	ON b.book_ID = o.book_id
	GROUP BY b.author
	ORDER BY  total_sale DESC;

-- 7 Cities where customer spent over 900
	SELECT c.name,c.city,c.country,SUM(o.total_amount) AS total_spend
	FROM Customers as c
	JOIN Orders o
	ON c.customer_id = o.customer_id
	GROUP BY c.name,c.city,c.country
	HAVING SUM(o.total_amount)>= 900
	ORDER BY total_spend DESC;

-- 	8 Finding customer who spending most on orders
    SELECT c.name, SUM(o.total_amount) as total_spend
	FROM Customers as c
	JOIN Orders as o
	ON c.customer_id = o.customer_id
	GROUP BY c.name
	ORDER BY total_spend DESC
	LIMIT 1;

-- 9 Calculating stock remaining after all orders
 SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS quanity_sold,
 b.stock - COALESCE(SUM(o.quantity),0) AS remaining_stock
 FROM books b
 LEFT JOIN orders o
 ON b.book_id = o.book_id
 GROUP BY b.book_id
 ORDER BY b.book_id ASC;
	