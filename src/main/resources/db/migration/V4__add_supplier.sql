ALTER TABLE products ADD COLUMN supplier VARCHAR(20) NULL;
UPDATE products SET supplier = CASE category
    WHEN 'COFFEE' THEN 'COFFEE TRADERS'
        ELSE 'export'
    END;
ALTER TABLE products MODIFY supplier VARCHAR(20) NOT NULL;