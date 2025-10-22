-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: inventory_reservations
ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE;
