-- Auto-generated from schema-map-postgres.psd1 (map@c5e4097)
-- engine: postgres
-- table:  inventory_reservations
CREATE INDEX IF NOT EXISTS idx_res_book ON inventory_reservations (book_id);

CREATE INDEX IF NOT EXISTS idx_res_order ON inventory_reservations (order_id);

CREATE INDEX IF NOT EXISTS idx_res_status_until ON inventory_reservations (status, reserved_until);
