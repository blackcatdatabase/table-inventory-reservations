<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – inventory_reservations

Temporary stock reservations tied to orders.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| tenant_id | BIGINT | NO | — |  |  |
| order_id | BIGINT | YES | — | Order (FK orders.id), optional. |  |
| book_id | BIGINT | NO | — | Book (FK books.id). |  |
| quantity | INTEGER | NO | — | Reserved quantity (> 0). |  |
| reserved_until | TIMESTAMPTZ(6) | NO | — | Expiration timestamp (UTC). |  |
| status | TEXT | NO | 'pending' | Reservation state. | enum: pending, confirmed, expired, cancelled |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| version | INTEGER | NO | 0 |  |  |