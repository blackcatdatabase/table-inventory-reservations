-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  inventory_reservations

-- Contract view for [inventory_reservations]
-- Adds is_expired helper.
CREATE OR REPLACE VIEW vw_inventory_reservations AS
SELECT
  id,
  tenant_id,
  order_id,
  book_id,
  quantity,
  reserved_until,
  (now() > reserved_until) AS is_expired,
  status,
  created_at,
  version
FROM inventory_reservations;
