-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  inventory_reservations

CREATE INDEX idx_inventory_reservations_order ON inventory_reservations (order_id);

CREATE INDEX idx_res_book_status ON inventory_reservations (book_id, status);

CREATE INDEX idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until);
