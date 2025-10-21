-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: inventory_reservations
ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE;
