CREATE DATABASE PlanShop;
USE PlanShop;

-- =================================================================================================

-- Recipe table listing all recipes
CREATE TABLE Recipes
(Re_id VARCHAR(6) PRIMARY KEY, 
Re_name VARCHAR(30) NOT NULL);

-- =================================================================================================

-- Shop area table listing where to find each ingredient whithin the shop
-- For this project we are assuming both supermarkets have same areas and ingredients distribution within the area
CREATE TABLE Department
(Dpt_id VARCHAR(6) PRIMARY KEY,
Dpt_name VARCHAR(30) NOT NULL);

-- =================================================================================================

-- Ingredients table listing ingredients, shop location and unit measures
-- Dpt_id defines the shop area where the product is located. Can "null" in case we only do online shopping and user does not want to integrate this functionality
-- In_unit at the moment only defined as unit or pack, to be developped further allowing gr, ml, etc and having a conversion table
-- so we can calculate 200gr tomatotes to how many tomatoes is this equivalent so we can build shopping list.
CREATE TABLE Ingredients
(In_id INTEGER PRIMARY KEY,
In_name VARCHAR(30) NOT NULL,
In_unit VARCHAR(10) NOT NULL,
Dpt_id VARCHAR(6),
	CONSTRAINT fkIn_Department_Dpt_id
    FOREIGN KEY (Dpt_id) REFERENCES Department(Dpt_id));

-- =================================================================================================

-- Table containing the unit of each ingredient needed for each recipe
CREATE TABLE Quantity
(Re_id VARCHAR(6) NOT NULL,
In_id  INTEGER NOT NULL,
Qty INTEGER,
	CONSTRAINT fkQty_Recipes_Re_id
		FOREIGN KEY (Re_id) REFERENCES Recipes(Re_id),
	CONSTRAINT fkQty_Ingredients_In_id
		FOREIGN KEY (In_id) REFERENCES Ingredients(In_id));

-- =================================================================================================

-- Create a table containing different suppermarkets
CREATE TABLE Supermarket
(Su_id VARCHAR(6) PRIMARY KEY,
Su_name VARCHAR(30) NOT NULL);

-- =================================================================================================

-- Create table containing the unit price per ingredient at each supermarket
CREATE TABLE Prices
(Su_id VARCHAR(6) NOT NULL, 
In_id INTEGER NOT NULL,
Pr_price DECIMAL(3,2) NOT NULL,
	CONSTRAINT fkPr_Supermarket_Su_id
		FOREIGN KEY (Su_id) REFERENCES Supermarket(Su_id),
	CONSTRAINT fkPr_Ingredients_In_id
		FOREIGN KEY (In_id) REFERENCES Ingredients(In_id));
 
-- =================================================================================================

