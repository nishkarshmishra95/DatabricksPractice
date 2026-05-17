create or refresh streaming live table orders_cleaned(
    constraint valid_order_number expect (order_id IS NOT NULL) on violation drop row
)
comment "The cleaned books orders with vaild order_id"
as
    select order_id,quantity,books,o.customer_id,c.profile:first_name as f_name,c.profile:last_name as l_name,cast(from_unixtime(order_timestamp,'yyyy-MM-dd HH:mm:ss') as timestamp) as order_timestamp,c.profile:address:country as country
    from stream(live.orders_raw) o
    left join live.customers c
    on o.customer_id = c.customer_id