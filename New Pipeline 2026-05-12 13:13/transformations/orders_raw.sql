CREATE OR REFRESH STREAMING TABLE orders_raw
COMMENT "The raw books orders, ingested from orders-raw"
AS SELECT * FROM STREAM(read_files("/Volumes/demoworkspace/default/bookstore_dataset/orders-json-raw", format => "json"))