-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  inventory_reservations

CREATE INDEX IF NOT EXISTS idx_res_book ON inventory_reservations (book_id);

CREATE INDEX IF NOT EXISTS idx_res_order ON inventory_reservations (order_id);

CREATE INDEX IF NOT EXISTS idx_res_status_until ON inventory_reservations (status, reserved_until);

CREATE INDEX IF NOT EXISTS idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until);

CREATE INDEX IF NOT EXISTS idx_inventory_reservations_order ON inventory_reservations (order_id);

CREATE INDEX IF NOT EXISTS idx_res_book_status ON inventory_reservations (book_id, status);
