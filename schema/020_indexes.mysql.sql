-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  inventory_reservations
CREATE INDEX idx_inventory_reservations_order ON inventory_reservations (order_id);

CREATE INDEX idx_res_book_status ON inventory_reservations (book_id, status);

CREATE INDEX idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until);
