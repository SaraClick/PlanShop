USE PlanShop;

-- What are the ingredients and quantities needed for a Paella? 
-- Using → Joins
SELECT 
		i.In_name AS 'Ingredient', 
        CONCAT(q.Qty,  i.In_unit) AS 'Quantity'
FROM Quantity q
JOIN Ingredients i 
	ON q.In_id = i.In_id
JOIN Recipes r
	ON q.Re_id = r.Re_id
WHERE r.Re_name = 'Paella'
ORDER BY q.Qty DESC;


-- =======================================================================================================================================================================

-- What is the shopping list for Paella, Salmorejo and Spanish Tortilla ? 
-- Using → Aggregates + Joins
SELECT  
		d.Dpt_name AS 'Department', 
		i.In_name AS 'Ingredient', SUM(q.Qty) AS 'Quantity', 
        i.In_unit AS 'Unit of measure'
FROM Quantity q
JOIN Ingredients i 
	ON q.In_id = i.In_id
JOIN Recipes r
	ON q.Re_id = r.Re_id
JOIN Department d
	ON i.Dpt_id = d.Dpt_id
WHERE r.Re_name IN ('Paella', 'Salmorejo', 'Spanish Tortilla')
GROUP BY i.In_name
ORDER BY d.Dpt_id, SUM(q.Qty) DESC;

-- =======================================================================================================================================================================

-- Which recipes require Potatoes? 
-- Using → Subqueries
SELECT r.Re_name AS 'Recipe with potatoes'
FROM Recipes r
WHERE r.Re_id IN (
	SELECT q.Re_id
    FROM Quantity q
    WHERE q.In_id IN (
		SELECT i.In_id
        FROM Ingredients i
        WHERE In_name LIKE '%Potatoe%'));

-- =======================================================================================================================================================================

-- What is the total price of each recipe depending on the supermarket? 
-- Using → Joins + Subquery + Agregates
SELECT 
		r.Re_name AS 'Recipe Name', 
		Sum(q.Qty*p.Pr_price) AS 'Recipe Cost', 
        s.Su_name AS 'Supermarket Name'
FROM Quantity q
JOIN Recipes r 	
	ON R.Re_id = q.Re_id
JOIN Prices p
	ON p.In_id = q.In_id
JOIN Supermarket s
	ON s.Su_id = p.Su_id
WHERE q.In_id IN (
	SELECT i.In_id
    FROM Ingredients i
    WHERE i.In_unit != 'n/a')
GROUP BY r.Re_name, s.Su_name
ORDER BY s.Su_name, Sum(q.Qty*p.Pr_price);

-- ====================================================================================================================================

-- Query using the View vw_globalid_price
-- If my meal plan includes Paella, Salmorejo and Spanish Tortilla
-- What would be the cost difference of buying at Tesco or Morrisons?
-- Using → Aggregate + view table

SELECT 
	Su_name AS 'Supermarket Name',
    Sum(Qty*Pr_price) AS 'Shopping cost'
FROM vw_globalid_price
WHERE Re_name IN ('Spanish Tortilla', 'Salmorejo', 'Paella')
GROUP BY Su_name;

-- ====================================================================================================================================

-- Which is the most expensive ingredient at Tesco?
-- Using → Joins and String cocatenation
SELECT CONCAT('It is the ', i.In_name, ', costing £', p.Pr_price, ' per ', i.In_unit) AS 'Most expensive ingredient at Tesco'
FROM Prices p
JOIN Ingredients i
	ON i.In_id = p.In_id
JOIN supermarket s
	ON p.Su_id = s.Su_id
WHERE Su_name = 'Tesco'
ORDER BY P.Pr_Price DESC
LIMIT 1;

