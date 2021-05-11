-- Create a table where we combine all Ids for supermarket, department, recipe and ingredient
-- including the price of the ingredient in the respective supermarket; quantity and names.
-- To ease identification of the IDs, add "i" to the ingredients ID so it's homogenized with the
-- others tables IDs 

CREATE VIEW vw_GlobalID_price AS
SELECT CONCAT('i',i.In_id) AS 'In_id_new', i.In_name, r.Re_id, r.Re_name, d.Dpt_id, d.Dpt_name, s.Su_id, s.Su_name, p.Pr_price, q.Qty
FROM Quantity q
JOIN Ingredients i
	ON q.In_id = i.In_id
JOIN Prices p
	ON p.In_id = i.In_id
JOIN Recipes r
	ON q.Re_id = r.Re_id
JOIN Department d
	ON i.Dpt_id = d.Dpt_id
JOIN Supermarket s
	ON s.Su_id = p.Su_id;

-- View to show only Vegetarian recipes
CREATE VIEW  vw_VegRecipes AS
SELECT r.Re_id, r.Re_name
FROM Recipes r
WHERE Re_id NOT IN (
	SELECT Re_id
    FROM Quantity
    WHERE In_id IN(
		SELECT In_id
		FROM Ingredients i
		WHERE Dpt_id IN ('d3', 'd6')));


SELECT *
FROM vw_vegrecipes;