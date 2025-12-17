-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  inventory_reservations

CREATE INDEX IF NOT EXISTS idx_res_book ON inventory_reservations (book_id);

CREATE INDEX IF NOT EXISTS idx_res_order ON inventory_reservations (order_id);

CREATE INDEX IF NOT EXISTS idx_res_status_until ON inventory_reservations (status, reserved_until);

CREATE INDEX IF NOT EXISTS idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until);

CREATE INDEX IF NOT EXISTS idx_inventory_reservations_order ON inventory_reservations (order_id);

CREATE INDEX IF NOT EXISTS idx_res_book_status ON inventory_reservations (book_id, status);
