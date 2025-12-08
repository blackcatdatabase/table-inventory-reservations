-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  inventory_reservations

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_book  FOREIGN KEY (tenant_id, book_id)  REFERENCES books(tenant_id, id)  ON DELETE CASCADE;

ALTER TABLE inventory_reservations ADD CONSTRAINT fk_res_order FOREIGN KEY (tenant_id, order_id) REFERENCES orders(tenant_id, id) ON DELETE CASCADE;
