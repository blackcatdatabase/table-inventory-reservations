-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  inventory_reservations

CREATE INDEX IF NOT EXISTS idx_res_book ON inventory_reservations (book_id);

CREATE INDEX IF NOT EXISTS idx_res_order ON inventory_reservations (order_id);

CREATE INDEX IF NOT EXISTS idx_res_status_until ON inventory_reservations (status, reserved_until);

CREATE INDEX IF NOT EXISTS idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until);

CREATE INDEX IF NOT EXISTS idx_inventory_reservations_order ON inventory_reservations (order_id);

CREATE INDEX IF NOT EXISTS idx_res_book_status ON inventory_reservations (book_id, status);
