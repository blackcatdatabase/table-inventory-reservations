-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  inventory_reservations

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_book  FOREIGN KEY (tenant_id, book_id)  REFERENCES books(tenant_id, id)  ON DELETE CASCADE;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_order FOREIGN KEY (tenant_id, order_id) REFERENCES orders(tenant_id, id) ON DELETE CASCADE;
