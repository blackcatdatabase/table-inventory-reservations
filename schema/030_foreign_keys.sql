-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00)
-- table: inventory_reservations
ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE;
