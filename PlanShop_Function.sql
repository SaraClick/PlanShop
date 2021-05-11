-- Calculation of new prices when a discount is given by a supermarket

DELIMITER //
CREATE FUNCTION New_Price(Disc DECIMAL(3,2), Pr_Price DECIMAL(3,2))
RETURNS DECIMAL(3,2)
DETERMINISTIC
BEGIN
    DECLARE new_price DECIMAL(3,2);
    SET new_price = Pr_price*(1-Disc);
    RETURN(new_price);
END //

-- =======================================================================================================================================================================

-- CREATE QUERY USING THE FUNCTION
-- Tesco starts to offer a 5% reward coupon
-- You can use this coupon in your next order
-- Calculate how much would I save if I enrol for this

SELECT 
	Su_name AS 'Recipe name',
    Sum(Qty*Pr_price) AS 'Cost without cost',
    Sum(Qty*New_Price(0.05, Pr_price)) AS 'Cost with offer',
    (Sum(Qty*Pr_price) - Sum(Qty*New_Price(0.05, Pr_price))) AS 'Savings'
FROM vw_globalid_price
WHERE (Re_name IN ('Spanish Tortilla', 'Salmorejo', 'Paella') AND Su_name = 'Tesco')
GROUP BY Su_name;


