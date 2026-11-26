ALTER TABLE products ADD COLUMN supplier VARCHAR(50) NULL;
UPDATE products SET supplier = CASE category
    WHEN 'COFFEE' THEN 'Coffee Traders'
    WHEN 'TEA' THEN 'Tea House'
    WHEN 'PASTRY' THEN 'Bakery Co'
    WHEN 'EQUIPMENT' THEN 'Barista Tools'
    END;
ALTER TABLE products MODIFY supplier VARCHAR(50) NOT NULL