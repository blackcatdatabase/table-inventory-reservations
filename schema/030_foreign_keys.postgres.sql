-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  inventory_reservations

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_book  FOREIGN KEY (tenant_id, book_id)  REFERENCES books(tenant_id, id)  ON DELETE CASCADE;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_order FOREIGN KEY (tenant_id, order_id) REFERENCES orders(tenant_id, id) ON DELETE CASCADE;
