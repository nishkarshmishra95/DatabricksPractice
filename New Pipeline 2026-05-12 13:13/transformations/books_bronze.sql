CREATE OR REFRESH STREAMING LIVE TABLE books_bronze
COMMENT "The raw books data, ingested from CDC feed"
AS SELECT * FROM cloud_files("/Volumes/demoworkspace/default/bookstore_dataset/books-cdc", "json")