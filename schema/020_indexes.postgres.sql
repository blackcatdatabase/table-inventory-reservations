-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  inventory_reservations
CREATE INDEX idx_res_book ON inventory_reservations (book_id);

CREATE INDEX idx_res_order ON inventory_reservations (order_id);

CREATE INDEX idx_res_status_until ON inventory_reservations (status, reserved_until);
