-- Auto-generated from schema-views-mysql.psd1 (map@c5e4097)
-- engine: mysql
-- table:  inventory_reservations
-- Contract view for [inventory_reservations]
-- Adds is_expired helper.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_inventory_reservations AS
SELECT
  id,
  order_id,
  book_id,
  quantity,
  reserved_until,
  (NOW() > reserved_until) AS is_expired,
  status,
  created_at,
  version
FROM inventory_reservations;
