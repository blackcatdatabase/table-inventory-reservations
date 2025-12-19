-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
-- engine: mysql
-- table:  inventory_reservations

-- Contract view for [inventory_reservations]
-- Adds is_expired helper.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_inventory_reservations AS
SELECT
  tenant_id,
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
