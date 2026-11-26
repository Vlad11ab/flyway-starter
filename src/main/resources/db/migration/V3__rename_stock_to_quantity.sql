ALTER TABLE products DROP CHECK products_chk_1;
ALTER TABLE products RENAME COLUMN stock TO quantity;
ALTER TABLE products ADD CONSTRAINT chk_products_quantity CHECK (quantity >= 0);