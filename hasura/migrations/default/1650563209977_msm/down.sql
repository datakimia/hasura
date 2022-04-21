TRUNCATE product_owner;
DELETE TABLE product_owner;
ALTER TABLE order_product DROP CONSTRAINT owner_id_fkey;
ALTER TABLE order_product DROP COLUMN owner_id;