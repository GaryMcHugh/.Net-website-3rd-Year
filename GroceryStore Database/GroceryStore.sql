IF DB_ID('Grocery_Store') IS NOT NULL
	DROP DATABASE Grocery_Store
	
CREATE DATABASE Grocery_Store
GO

USE [Grocery_Store]
GO

create table Product 
(  
ProductID smallint identity(1,1) not null,
name varchar(255) not null,
price [money] not null,
stock int not null,
stock_sold int not null,
category varchar(255) not null,
primary key (ProductID)
)

INSERT INTO Product (name, price, stock, stock_sold, category)
                       VALUES
                       ("Apple", "0.51", "96", "23", "Fruit"),
					   ("Orange", "0.62", "72", "51", "Fruit"),
					   ("Banana", "0.34", "61", "12", "Fruit"),
					   ("Lemon", "0.51", "96", "23", "Fruit"),
					   ("Lime", "0.62", "72", "51", "Fruit"),
					   ("Pineapple", "0.92", "27", "8", "Fruit"),
					   ("Pear", "0.58", "57", "20", "Fruit"),
					   ("Kiwi", "0.43", "34", "19", "Fruit"),
					   ("Coconut", "1.20", "43", "12", "Fruit"),
					   ("Watermelon", "3.34", "15", "12", "Fruit"),
					   ("Carrot", "0.12", "73", "42", "Vegetable"),
					   ("Potato", "0.23", "357", "157", "Vegetable"),
					   ("Lettuce", "0.65", "153", "37", "Vegetable"),
					   ("Cabbage", "0.65", "41", "15", "Vegetable"),
					   ("Corn", "0.27", "123", "29", "Vegetable"),
					   ("Peas", "0.15", "259", "117", "Vegetable"),
					   ("Turnip", "0.58", "51", "35", "Vegetable"),
					   ("Tomato", "0.23", "343", "147", "Vegetable"),
					   ("Peppers", "0.26", "87", "53", "Vegetable"),
					   ("Broccoli", "0.48", "129", "66", "Vegetable"),
					   ("Coca Cola", "1.85", "214", "53", "Soft Drink"),
					   ("Fanta", "1.89", "163", "27", "Soft Drink"),
					   ("Sprite", "1.92", "144", "37", "Soft Drink"),
					   ("Club Orange", "1.67", "77", "36", "Soft Drink"),
					   ("Lucozade", "2.20", "177", "61", "Soft Drink"),
					   ("Pepsi", "1.73", "49", "67", "Soft Drink"),
					   ("Dr Pepper", "1.99", "87", "22", "Soft Drink"),
					   ("Mountain Dew", "2.50", "41", "12", "Soft Drink"),
					   ("Pizza", "2.35", "64", "19", "Frozen Food"),
					   ("Potato Wedges", "1.25", "57", "17", "Frozen Food"),
					   ("Hash Browns", "1.85", "36", "11", "Frozen Food"),
					   ("Chicken Dippers", "2.10", "153", "48", "Frozen Food"),
					   ("Burgers", "3.59", "87", "47", "Frozen Food"),
					   ("Battered Cod", "4.89", "64", "23", "Frozen Food"),
					   ("Southern Fried Chicken", "3.50", "46", "21", "Frozen Food"),
					   ("Ice Cream", "2.25", "116", "57", "Frozen Food"),
					   ("Onion Rings", "1.49", "87", "30", "Frozen Food"),
					   ("Breaded Chicken", "2.35", "92", "81", "Frozen Food"),
					   ("White Loaf", "0.85", "127", "67", "Bakery"),
					   ("Brown Loaf", "0.85", "92", "41", "Bakery"),
					   ("Apple Pie", "1.75", "87", "21", "Bakery"),
					   ("Cookie", "0.57", "88", "21", "Bakery"),
					   ("Croissant", "0.68", "72", "15", "Bakery"),
					   ("Doughnuts", "0.47", "87", "41", "Bakery"),
					   ("Muffin", "0.99", "67", "39", "Bakery"),
					   ("Baguette", "0.87", "23", "7", "Bakery"),
					   ("Brown Soda Bread", "2.74", "89", "25", "Bakery"),
					   ("Bagel", "0.23", "148", "58", "Bakery"),
					   ("Milk", "1.79", "253", "84", "Dairy"),
					   ("Cheese", "3.49", "153", "47", "Dairy"),
					   ("Cream", "1.75", "74", "26", "Dairy"),
					   ("Butter", "1.99", "123", "43", "Dairy"),
					   ("Eggs", "1.21", "87", "43", "Dairy"),
					   ("Sour Cream", "1.65", "57", "31", "Dairy"),
					   ("Chocolate Milk", "1.85", "47", "23", "Dairy"),
					   ("Heineken", "2.12", "237", "173", "Alcohol"),
					   ("Bulmers", "2.10", "217", "192", "Alcohol"),
					   ("Buckfast", "14.00", "97", "23", "Alcohol"),
					   ("Vodka", "22.00", "87", "56", "Alcohol"),
					   ("Baileys", "13.50", "53", "17", "Alcohol"),
					   ("Guinness", "2.50", "153", "161", "Alcohol"),
					   ("Red Wine", "14.00", "83", "25", "Alcohol"),
					   ("White Wine", "13.50", "92", "43", "Alcohol");

create table Clubcard 
(  
ClubcardID smallint identity(1,1) not null,
points int not null,
customer_Name varchar(255) not null,
street varchar(255) not null,
town varchar(255) not null,
county varchar(255) not null,
email varchar(255) not null,
phoneNo int,
primary key (ClubcardID)
)

INSERT INTO Clubcard (points, customer_Name, street, town, county, email, phoneNo)
                       VALUES
                       ("237", "Jack Jones", "Main street", "castlebar", "mayo", "jackjones@gmail.com", "0868772541"),
					   ("482", "Joe Bloggs", "Bothair le cheile", "Galway City", "Galway", "joebloggs77@hotmail.com", "0879154739"),
					   ("120", "Mary O Grady", "Bog Rd", "Oranmore", "Galway", "maryog@live.ie", "0851225214"),
					   ("42", "Kyle Smith", "Mill Street", "Westport", "Mayo", "kylesmith@hotmail.com", "0862146257"),
					   ("1048", "Rachel Lynn", "Cill Ard", "Galway City", "Galway", "rachellynn@eircom.net", "0837754782"),
					   ("2456", "Peter Whyte", "Parklands", "Athenry", "Galway", "peterwhyte86@gmail.com", "0873557481"),
					   ("127", "Alan O Malley", "AshThorn Ave", "Headford", "Galway", "alanomal@gmail.com", "0862551475"),
					   ("557", "Alan Lavelle", "Ballyargadaun", "Cross", "Mayo", "alanlavelle@eircom.net", "0852456574");

create table Store 
(  
StoreID smallint identity(1,1) not null,
location varchar(255) not null,
phoneNo int,
contactEmail varchar(255) not null,
managerID int not null,
primary key (StoreID)
)

INSERT INTO Store (location, phoneNo, contactEmail, managerID)
                       VALUES
                       ("Oranmore", "07155771", "gsoranmore@gmail.com", "58"),
					   ("Castlebar", "09426391", "gscastlebar@gmail.com", "254"),
					   ("Westport", "09825575", "gswestport@gmail.com", "25"),
					   ("Ballina", "09628354", "gsballina@gmail.com", "147"),
					   ("Clonboo", "07126987", "gsclonboo@gmail.com", "12"),
					   ("Headford", "07645612", "gsheadford@gmail.com", "73"),
					   ("Galway City", "07452236", "gsgalway@gmail.com", "27"),
					   ("Claregalway", "07369987", "gsclaregalway@gmail.com", "98");
					   
create table Category 
(  
CategoryID smallint identity(1,1) not null,
shortName varchar(255) not null,
longName varchar(255) not null,
primary key (CategoryID)
)

INSERT INTO Category (shortName, longName)
                       VALUES
                       ("FR", "Fruit"),
					   ("Veg", "Vegetable"),
					   ("DR", "Soft Drink"),
					   ("FF", "Frozen Food"),
					   ("BK", "Bakery"),
					   ("DY", "Dairy"),
					   ("AL", "Alcohol");