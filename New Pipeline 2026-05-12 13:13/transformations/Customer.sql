create or refresh live table customers
comment "Te customers lookup table, ingested from  customers-json"
as
select * from json.`/Volumes/demoworkspace/default/bookstore_dataset/customers-json`