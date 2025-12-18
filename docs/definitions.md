# inventory_reservations

Temporary stock reservations tied to orders.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| tenant_id | BIGINT | NO |  | Owning tenant (FK tenants.id). |  |
| order_id | BIGINT | YES |  | Order (FK orders.id), optional. |  |
| book_id | BIGINT | NO |  | Book (FK books.id). |  |
| quantity | mysql: INT / postgres: INTEGER | NO |  | Reserved quantity (> 0). |  |
| reserved_until | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO |  | Expiration timestamp (UTC). |  |
| status | mysql: ENUM('pending','confirmed','expired','cancelled') / postgres: TEXT | NO | pending | Reservation state. (enum: pending, confirmed, expired, cancelled) |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| version | mysql: INT / postgres: INTEGER | NO | 0 | Optimistic locking version counter. |  |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_inventory_reservations_order | order_id | CREATE INDEX idx_inventory_reservations_order ON inventory_reservations (order_id) |
| idx_res_book | book_id | INDEX idx_res_book (book_id) |
| idx_res_book_status | book_id,status | CREATE INDEX idx_res_book_status ON inventory_reservations (book_id, status) |
| idx_res_order | order_id | INDEX idx_res_order (order_id) |
| idx_res_status_until | status,reserved_until | INDEX idx_res_status_until (status, reserved_until) |
| idx_res_tenant_status_until | tenant_id,status,reserved_until | CREATE INDEX idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_res_book | tenant_id,book_id | books(tenant_id,id) | ON DELETE CASCADE |
| fk_res_order | tenant_id,order_id | orders(tenant_id,id) | ON DELETE CASCADE |
| fk_res_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_inventory_reservations_order | order_id | CREATE INDEX IF NOT EXISTS idx_inventory_reservations_order ON inventory_reservations (order_id) |
| idx_res_book | book_id | CREATE INDEX IF NOT EXISTS idx_res_book ON inventory_reservations (book_id) |
| idx_res_book_status | book_id,status | CREATE INDEX IF NOT EXISTS idx_res_book_status ON inventory_reservations (book_id, status) |
| idx_res_order | order_id | CREATE INDEX IF NOT EXISTS idx_res_order ON inventory_reservations (order_id) |
| idx_res_status_until | status,reserved_until | CREATE INDEX IF NOT EXISTS idx_res_status_until ON inventory_reservations (status, reserved_until) |
| idx_res_tenant_status_until | tenant_id,status,reserved_until | CREATE INDEX IF NOT EXISTS idx_res_tenant_status_until ON inventory_reservations (tenant_id, status, reserved_until) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_res_book | tenant_id,book_id | books(tenant_id,id) | ON DELETE CASCADE |
| fk_res_order | tenant_id,order_id | orders(tenant_id,id) | ON DELETE CASCADE |
| fk_res_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_inventory_reservations | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_inventory_reservations | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
