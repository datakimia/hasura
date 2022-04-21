CREATE TABLE product_owner
(
    owner_id integer,
    product_id integer,
    created_at timestamp with time zone DEFAULT now(),
    CONSTRAINT product_id_uidx UNIQUE (product_id),
    CONSTRAINT owner_id_fkey FOREIGN KEY (owner_id)
        REFERENCES "user" (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT product_id FOREIGN KEY (product_id)
        REFERENCES product (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

ALTER TABLE IF EXISTS order_product
    ADD COLUMN owner_id integer ;
ALTER TABLE IF EXISTS order_product
    ADD CONSTRAINT owner_id_fkey FOREIGN KEY (owner_id)
    REFERENCES "user" (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
    NOT VALID;