-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  inventory_reservations

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_book FOREIGN KEY (tenant_id, book_id) REFERENCES books(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_order FOREIGN KEY (tenant_id, order_id) REFERENCES orders(tenant_id, id) ON DELETE CASCADE;
