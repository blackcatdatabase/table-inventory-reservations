-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  inventory_reservations

CREATE INDEX idx_inventory_reservations_order ON inventory_reservations (order_id);

CREATE INDEX idx_res_book_status ON inventory_reservations (book_id, status);

CREATE INDEX idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until);
