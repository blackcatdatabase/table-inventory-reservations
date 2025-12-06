-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  inventory_reservations

CREATE TABLE IF NOT EXISTS inventory_reservations (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  tenant_id BIGINT UNSIGNED NOT NULL,
  order_id BIGINT UNSIGNED NULL,
  book_id BIGINT UNSIGNED NOT NULL,
  quantity INT UNSIGNED NOT NULL,
  reserved_until DATETIME(6) NOT NULL,
  status ENUM('pending','confirmed','expired','cancelled') NOT NULL DEFAULT 'pending',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  version INT UNSIGNED NOT NULL DEFAULT 0,
  INDEX idx_res_book (book_id),
  INDEX idx_res_order (order_id),
  INDEX idx_res_status_until (status, reserved_until),
  CONSTRAINT chk_res_qty CHECK (quantity > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
