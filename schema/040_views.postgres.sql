-- Auto-generated from schema-views-postgres.psd1 (map@c5e4097)
-- engine: postgres
-- table:  inventory_reservations
-- Contract view for [inventory_reservations]
-- Adds is_expired helper.
CREATE OR REPLACE VIEW vw_inventory_reservations AS
SELECT
  id,
  order_id,
  book_id,
  quantity,
  reserved_until,
  CASE WHEN now() > reserved_until THEN 1 ELSE 0 END AS is_expired,
  status,
  created_at,
  version
FROM inventory_reservations;
