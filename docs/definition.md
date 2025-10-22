<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – inventory_reservations

Temporary stock reservations tied to orders.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| order_id | BIGINT UNSIGNED | YES | — | Order (FK orders.id), optional. |  |
| book_id | BIGINT UNSIGNED | NO | — | Book (FK books.id). |  |
| quantity | INT UNSIGNED | NO | — | Reserved quantity (> 0). |  |
| reserved_until | DATETIME(6) | NO | — | Expiration timestamp (UTC). |  |
| status | ENUM('pending','confirmed','expired','cancelled') | NO | 'pending' | Reservation state. | enum: pending, confirmed, expired, cancelled |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |