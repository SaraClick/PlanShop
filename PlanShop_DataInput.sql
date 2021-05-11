-- DEPARTMENT (Dpt_id, Dpt_name)
CALL InsertDepartment('d1', 'Fruit & Veg');
CALL InsertDepartment('d2', 'Bakery');
CALL InsertDepartment('d3', 'Fish & Seafood');
CALL InsertDepartment('d4', 'Dairy & Eggs');
CALL InsertDepartment('d5', 'Sauces & Food cupboard');
CALL InsertDepartment('d6', 'Meat');
CALL InsertDepartment('d7', 'Frozen');
CALL InsertDepartment('d8', 'Pasta, Rice & Legumes');
CALL InsertDepartment('d9', 'Chilled');


-- =================================================================================================

-- INGREDIENTS (In_id, In_name, In_unit, Dpt_id)
CALL InsertIngredient(1, 'Potatoes','u', 'd1');
CALL InsertIngredient(2, 'Eggs', 'u', 'd4');
CALL InsertIngredient(3, 'Onions', 'u', 'd1');
CALL InsertIngredient(4, 'Olive Oil', 'n/a', 'd5');
CALL InsertIngredient(5, 'Salt', 'n/a', 'd5');
CALL InsertIngredient(6, 'Pepper', 'n/a', 'd5');
CALL InsertIngredient(7, 'Red Peppers', 'u', 'd1');
CALL InsertIngredient(8, 'Green Peppers', 'u', 'd1');
CALL InsertIngredient(9, 'Passata', 'Pack', 'd5');
CALL InsertIngredient(10, 'Prawns', 'u', 'd3');
CALL InsertIngredient(11, 'Squid', 'u', 'd3');
CALL InsertIngredient(12, 'Mussels', 'Pack', 'd3');
CALL InsertIngredient(13, 'Paella Rice', 'Pack', 'd3');
CALL InsertIngredient(14, 'Tomatoes','u', 'd1');
CALL InsertIngredient(15, 'Cucumber', 'u', 'd1');
CALL InsertIngredient(16, 'Bread', 'u', 'd2');
CALL InsertIngredient(17, 'Garlic', 'u', 'd1');
CALL InsertIngredient(18, 'Serrano ham', 'Pack', 'd9');

-- =================================================================================================

-- RECIPES (Re_id, Re_name)
CALL InsertRecipes('r1', 'Spanish tortilla');
CALL InsertRecipes('r2', 'Paella');
CALL InsertRecipes('r3', 'Salmorejo');

-- =================================================================================================

-- SUPERMARKET (Su_id, Su_name)
CALL InsertSupermarket('s1', 'Tesco');
CALL InsertSupermarket('s2', 'Morrisons');

-- =================================================================================================

-- PRICES (Su_id, In_id, Pr_price)
CALL InsertPrices('s1', 1, 0.15);
CALL InsertPrices('s1', 2, 0.25);
CALL InsertPrices('s1', 3, 0.30);
CALL InsertPrices('s1', 4, 3.38);
CALL InsertPrices('s1', 5, 1.00);
CALL InsertPrices('s1', 6, 0.90);
CALL InsertPrices('s1', 7, 0.45);
CALL InsertPrices('s1', 8, 0.42);
CALL InsertPrices('s1', 9, 0.42);
CALL InsertPrices('s1', 10, 1.00);
CALL InsertPrices('s1', 11, 1.00);
CALL InsertPrices('s1', 12, 3.48);
CALL InsertPrices('s1', 13, 1.50);
CALL InsertPrices('s1', 14, 0.25);
CALL InsertPrices('s1', 15, 0.25);
CALL InsertPrices('s1', 16, 1.80);
CALL InsertPrices('s1',17, 0.22);
CALL InsertPrices('s2', 1, 0.13);
CALL InsertPrices('s2', 2, 0.30);
CALL InsertPrices('s2', 3, 0.32);
CALL InsertPrices('s2', 4, 3.40);
CALL InsertPrices('s2', 5, 1.00);
CALL InsertPrices('s2', 6, 1.00);
CALL InsertPrices('s2', 7, 0.45);
CALL InsertPrices('s2', 8, 0.45);
CALL InsertPrices('s2', 9, 0.40);
CALL InsertPrices('s2', 10, 0.85);
CALL InsertPrices('s2', 11, 1.20);
CALL InsertPrices('s2', 12, 3.50);
CALL InsertPrices('s2', 13, 1.40);
CALL InsertPrices('s2', 14, 0.29);
CALL InsertPrices('s2', 15, 0.22);
CALL InsertPrices('s2', 16, 1.50);
CALL InsertPrices('s2', 17, 0.25);

-- =================================================================================================

-- QUANTITY (Re_id, In_id, Qty)
CALL InsertQuantity('r1', 1, 3);
CALL InsertQuantity('r1', 2, 5);
CALL InsertQuantity('r1', 3, 1);
CALL InsertQuantity('r1', 4, NULL);
CALL InsertQuantity('r1', 5, NULL);
CALL InsertQuantity('r1', 6, NULL);
CALL InsertQuantity('r2', 4, NULL);
CALL InsertQuantity('r2', 5, NULL);
CALL InsertQuantity('r2', 6, NULL);
CALL InsertQuantity('r2', 7, 2);
CALL InsertQuantity('r2', 8, 1);
CALL InsertQuantity('r2', 3, 1);
CALL InsertQuantity('r2', 9, 1);
CALL InsertQuantity('r2', 10, 8);
CALL InsertQuantity('r2', 11, 3);
CALL InsertQuantity('r2', 12, 1);
CALL InsertQuantity('r2', 13, 1);
CALL InsertQuantity('r3', 4, NULL);
CALL InsertQuantity('r3', 5, NULL);
CALL InsertQuantity('r3', 6, NULL);
CALL InsertQuantity('r3', 14, 10);
CALL InsertQuantity('r3', 16, 1);
CALL InsertQuantity('r3', 17, 1);
CALL InsertQuantity('r3', 2, 4);
