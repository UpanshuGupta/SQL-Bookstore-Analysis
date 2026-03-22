Drop database if exists onlinebookStore;
CREATE DATABASE onlinebookStore;

DROP TABLE IF EXISTS books;
CREATE TABLE books( 
Book_ID SERIAL PRIMARY KEY, 
Title VARCHAR(100), 
Author VARCHAR(100), 
Genre VARCHAR(10), 
Published_Year INT, 
Price NUMERIC(10,2), 
Stock INT ); 

DROP TABLE IF EXISTS customers;
CREATE TABLE customers( 
Customer_ID SERIAL PRIMARY KEY, 
Name VARCHAR(50), 
Email VARCHAR(50) UNIQUE, 
Phone VARCHAR(10), 
City VARCHAR(50),
Country VARCHAR(50) ); 

DROP TABLE IF EXISTS orders; 
CREATE TABLE orders( 
Order_ID SERIAL PRIMARY KEY, 
Customer_ID INT REFERENCES Customers(Customer_ID), 
Book_ID INT REFERENCES books(Book_ID), 
Order_Date DATE, 
Quantity INT, 
Total_Amount NUMERIC(10,2)
);


TRUNCATE books RESTART IDENTITY;

INSERT INTO books (Title, Author, Genre, Published_Year, Price, Stock) VALUES
('The Alchemist','Paulo Coelho','Fiction',1988,299,50),
('Atomic Habits','James Clear','SelfHelp',2018,499,40),
('1984','George Orwell','Dystopia',1949,199,30),
('To Kill a Mockingbird','Harper Lee','Classic',1960,349,25),
('Rich Dad Poor Dad','Robert Kiyosaki','Finance',1997,450,60),
('The Hobbit','J.R.R. Tolkien','Fantasy',1937,399,35),
('Think and Grow Rich','Napoleon Hill','SelfHelp',1937,299,45),
('The Power of Now','Eckhart Tolle','Spiritual',1997,350,20),
('Harry Potter 1','J.K. Rowling','Fantasy',1997,599,70),
('The Subtle Art','Mark Manson','SelfHelp',2016,450,55),

('Ikigai','Hector Garcia','Lifestyle',2016,399,65),
('Deep Work','Cal Newport','Productivity',2016,500,30),
('Sapiens','Yuval Noah Harari','History',2011,550,40),
('Educated','Tara Westover','Memoir',2018,480,25),
('Psychology of Money','Morgan Housel','Finance',2020,420,50),
('Zero to One','Peter Thiel','Business',2014,399,45),
('The Lean Startup','Eric Ries','Business',2011,450,35),
('Wings of Fire','A.P.J. Abdul Kalam','Biography',1999,300,60),
('Monk Who Sold Ferrari','Robin Sharma','SelfHelp',1996,350,40),
('Do Epic Shit','Ankur Warikoo','Motivation',2021,499,55),

('Start With Why','Simon Sinek','Business',2009,450,40),
('Outliers','Malcolm Gladwell','Psychology',2008,420,35),
('Blink','Malcolm Gladwell','Psychology',2005,400,30),
('Grit','Angela Duckworth','SelfHelp',2016,470,25),
('The 4-Hour Workweek','Timothy Ferriss','Business',2007,480,20),
('Rework','Jason Fried','Business',2010,430,22),
('Crushing It','Gary Vaynerchuk','Motivation',2018,460,28),
('Hooked','Nir Eyal','Productivity',2014,390,24),
('Drive','Daniel Pink','Psychology',2009,410,26),
('Essentialism','Greg McKeown','Productivity',2014,420,30),

('Make Time','Jake Knapp','Productivity',2018,399,20),
('Eat That Frog','Brian Tracy','SelfHelp',2001,350,25),
('Can’t Hurt Me','David Goggins','Motivation',2018,550,30),
('12 Rules for Life','Jordan Peterson','Psychology',2018,500,35),
('The One Thing','Gary Keller','Business',2013,420,28),
('Thinking Fast and Slow','Daniel Kahneman','Psychology',2011,600,40),
('Richest Man in Babylon','George Clason','Finance',1926,300,50),
('Millionaire Fastlane','MJ DeMarco','Finance',2011,480,20),
('Cashflow Quadrant','Robert Kiyosaki','Finance',1998,450,22),
('Blue Ocean Strategy','W Chan Kim','Business',2005,520,25),

('Good to Great','Jim Collins','Business',2001,500,30),
('Built to Last','Jim Collins','Business',1994,480,20),
('Startupland','Mikkel Svane','Business',2015,450,18),
('No Rules Rules','Reed Hastings','Business',2020,550,22),
('Shoe Dog','Phil Knight','Biography',2016,530,30),
('Elon Musk','Ashlee Vance','Biography',2015,600,25),
('Steve Jobs','Walter Isaacson','Biography',2011,650,20),
('Becoming','Michelle Obama','Memoir',2018,580,28),
('Long Walk to Freedom','Nelson Mandela','Biography',1994,520,18),
('Freedom at Midnight','Dominique Lapierre','History',1975,450,20);

ALTER TABLE books
ALTER COLUMN Genre type VARCHAR(30);



INSERT INTO customers (Name, Email, Phone, City, Country) VALUES
('Rahul Sharma','rahul@gmail.com','9000000001','Delhi','India'),
('Priya Verma','priya@gmail.com','9000000002','Mumbai','India'),
('Amit Kumar','amit@gmail.com','9000000003','Bangalore','India'),
('Sneha Singh','sneha@gmail.com','9000000004','Chennai','India'),
('Ravi Patel','ravi@gmail.com','9000000005','Ahmedabad','India'),

('John Smith','john@gmail.com','9000000006','New York','USA'),
('Emily Davis','emily@gmail.com','9000000007','Chicago','USA'),
('Michael Brown','michael@gmail.com','9000000008','Los Angeles','USA'),
('Sophia Wilson','sophia@gmail.com','9000000009','Houston','USA'),
('James Anderson','james@gmail.com','9000000010','Boston','USA'),

('Oliver Jones','oliver@gmail.com','9000000011','London','UK'),
('Harry Taylor','harry@gmail.com','9000000012','Manchester','UK'),
('George White','george@gmail.com','9000000013','Liverpool','UK'),
('Jack Harris','jack@gmail.com','9000000014','Birmingham','UK'),
('Noah Martin','noah@gmail.com','9000000015','Leeds','UK'),

('Liam Wilson','liam@gmail.com','9000000016','Toronto','Canada'),
('Noah Brown','noahb@gmail.com','9000000017','Vancouver','Canada'),
('Emma Taylor','emma@gmail.com','9000000018','Montreal','Canada'),
('Ava Thomas','ava@gmail.com','9000000019','Ottawa','Canada'),
('Mason Lee','mason@gmail.com','9000000020','Calgary','Canada'),

('Lucas Martin','lucas@gmail.com','9000000021','Paris','France'),
('Hugo Bernard','hugo@gmail.com','9000000022','Lyon','France'),
('Louis Dubois','louis@gmail.com','9000000023','Marseille','France'),
('Alice Leroy','alice@gmail.com','9000000024','Nice','France'),
('Emma Moreau','emma2@gmail.com','9000000025','Toulouse','France'),

('Luca Rossi','luca@gmail.com','9000000026','Rome','Italy'),
('Marco Bianchi','marco@gmail.com','9000000027','Milan','Italy'),
('Giovanni Romano','gio@gmail.com','9000000028','Naples','Italy'),
('Francesca Greco','fran@gmail.com','9000000029','Turin','Italy'),
('Sofia Conti','sofia@gmail.com','9000000030','Florence','Italy'),

('Yuki Tanaka','yuki@gmail.com','9000000031','Tokyo','Japan'),
('Haruto Sato','haruto@gmail.com','9000000032','Osaka','Japan'),
('Sakura Suzuki','sakura@gmail.com','9000000033','Kyoto','Japan'),
('Ren Takahashi','ren@gmail.com','9000000034','Nagoya','Japan'),
('Hina Ito','hina@gmail.com','9000000035','Hiroshima','Japan'),

('Carlos Garcia','carlos@gmail.com','9000000036','Madrid','Spain'),
('Luis Martinez','luis@gmail.com','9000000037','Barcelona','Spain'),
('Javier Lopez','javier@gmail.com','9000000038','Valencia','Spain'),
('Sofia Perez','sofia2@gmail.com','9000000039','Seville','Spain'),
('Maria Sanchez','maria@gmail.com','9000000040','Bilbao','Spain'),

('Ali Khan','ali@gmail.com','9000000041','Dubai','UAE'),
('Omar Hassan','omar@gmail.com','9000000042','Abu Dhabi','UAE'),
('Fatima Noor','fatima@gmail.com','9000000043','Sharjah','UAE'),
('Aisha Ahmed','aisha@gmail.com','9000000044','Ajman','UAE'),
('Zayed Ali','zayed@gmail.com','9000000045','Al Ain','UAE'),

('Chen Wei','chen@gmail.com','9000000046','Beijing','China'),
('Li Na','lina@gmail.com','9000000047','Shanghai','China'),
('Wang Lei','wang@gmail.com','9000000048','Shenzhen','China'),
('Zhang Wei','zhang@gmail.com','9000000049','Guangzhou','China'),
('Liu Yang','liu@gmail.com','9000000050','Chengdu','China');




INSERT INTO orders (Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) VALUES
(1,1,'2024-01-01',2,598.00),
(2,2,'2024-01-02',1,499.00),
(3,3,'2024-01-03',3,597.00),
(4,4,'2024-01-04',2,698.00),
(5,5,'2024-01-05',1,450.00),

(6,6,'2024-01-06',2,798.00),
(7,7,'2024-01-07',1,299.00),
(8,8,'2024-01-08',3,1050.00),
(9,9,'2024-01-09',2,1198.00),
(10,10,'2024-01-10',1,450.00),

(11,11,'2024-01-11',2,798.00),
(12,12,'2024-01-12',1,500.00),
(13,13,'2024-01-13',3,1650.00),
(14,14,'2024-01-14',2,960.00),
(15,15,'2024-01-15',1,420.00),

(16,16,'2024-01-16',2,798.00),
(17,17,'2024-01-17',1,450.00),
(18,18,'2024-01-18',3,900.00),
(19,19,'2024-01-19',2,700.00),
(20,20,'2024-01-20',1,499.00),

(21,21,'2024-01-21',2,900.00),
(22,22,'2024-01-22',1,420.00),
(23,23,'2024-01-23',3,1200.00),
(24,24,'2024-01-24',2,940.00),
(25,25,'2024-01-25',1,480.00),

(26,26,'2024-01-26',2,900.00),
(27,27,'2024-01-27',1,460.00),
(28,28,'2024-01-28',3,1170.00),
(29,29,'2024-01-29',2,820.00),
(30,30,'2024-01-30',1,490.00),

(31,31,'2024-01-31',2,1000.00),
(32,32,'2024-02-01',1,510.00),
(33,33,'2024-02-02',3,1560.00),
(34,34,'2024-02-03',2,1060.00),
(35,35,'2024-02-04',1,540.00),

(36,36,'2024-02-05',2,1100.00),
(37,37,'2024-02-06',1,560.00),
(38,38,'2024-02-07',3,1710.00),
(39,39,'2024-02-08',2,1160.00),
(40,40,'2024-02-09',1,590.00),

(41,41,'2024-02-10',2,1200.00),
(42,42,'2024-02-11',1,610.00),
(43,43,'2024-02-12',3,1860.00),
(44,44,'2024-02-13',2,1260.00),
(45,45,'2024-02-14',1,640.00),

(46,46,'2024-02-15',2,1300.00),
(47,47,'2024-02-16',1,660.00),
(48,48,'2024-02-17',3,2010.00),
(49,49,'2024-02-18',2,1360.00),
(50,50,'2024-02-19',1,690.00);

