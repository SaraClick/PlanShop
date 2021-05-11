-- DEPARTMENTS
DELIMITER //
CREATE PROCEDURE InsertDepartment(
	IN Dpt_id VARCHAR(6),
    IN Dpt_name VARCHAR(30)
)
BEGIN 
INSERT INTO Department(Dpt_id, Dpt_name)
VALUES (Dpt_id, Dpt_name);
END // 
DELIMITER ;

-- Example calling InsertDepartment Stored function
CALL InsertDepartment('d10', 'Drinks');

-- =================================================================================================

-- INGREDIENTS
DELIMITER //
CREATE PROCEDURE InsertIngredient(
	IN In_id INT,
    IN In_name VARCHAR(30),
    IN In_unit VARCHAR(10),
    IN Dpt_id VARCHAR(6)
)
BEGIN 
INSERT INTO Ingredients(In_id, In_name, In_unit, Dpt_id)
VALUES (In_id, In_name, In_unit, Dpt_id);
END // 
DELIMITER ;

-- Example calling InsertIngredient Stored Function
-- Department d9 corresponds to Chilled section
CALL InsertIngredient(18, 'Serrano ham', 'Pack', 'd9');

-- =================================================================================================

-- PRICES
DELIMITER //
CREATE PROCEDURE InsertPrices(
	IN Su_id VARCHAR(6),
    IN In_id INTEGER,
    IN Pr_price DECIMAL(3,2)
)
BEGIN 
INSERT INTO Prices(Su_id, In_id, Pr_price)
VALUES (Su_id, In_id, Pr_price);
END // 
DELIMITER ;

-- Example calling InsertPrices Stored Function
CALL InsertPrices('s1', 18, 1.58);
CALL InsertPrices('s2', 18, 1.75);

-- =================================================================================================

-- QUANTITY
DELIMITER //
CREATE PROCEDURE InsertQuantity(
	IN Re_id VARCHAR(6),
    IN In_id INTEGER,
    IN Qty INTEGER
)
BEGIN 
INSERT INTO Quantity(Re_id, In_id, Qty)
VALUES (Re_id, In_id, Qty);
END // 
DELIMITER ;

-- Example calling InsertPrices Stored Function
CALL InsertQuantity('r4', 18, 1);

-- =================================================================================================

-- RECIPES
DELIMITER //
CREATE PROCEDURE InsertRecipes(
	IN Re_id VARCHAR(6),
    IN Re_name VARCHAR(30)
)
BEGIN 
INSERT INTO recipes(Re_id, Re_name)
VALUES (Re_id, Re_name);
END // 
DELIMITER ;

-- Example calling InsertRecipe Stored Function
CALL InsertRecipes('r4', 'Pa amb oli');

-- =================================================================================================

-- SUPERMARKETS
DELIMITER //
CREATE PROCEDURE InsertSupermarket(
	IN Su_id VARCHAR(6),
    IN Su_name VARCHAR(30)
)
BEGIN 
INSERT INTO Supermarket(Su_id, Su_name)
VALUES (Su_id, Su_name);
END // 
DELIMITER ;

-- Example calling InsertSupermarket Stored Function
CALL InsertSupermarket('s3', 'Waitrosse');


