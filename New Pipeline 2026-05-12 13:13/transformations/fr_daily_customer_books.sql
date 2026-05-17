create or refresh live table fr_daily_customer_books
comment "Daily number of books per customer in China"
as
    select customer_id,f_name,l_name,date_trunc("DD", order_timestamp) as order_date, sum(quantity) as books_counts
    from live.orders_cleaned
    where country = "France"
    group by customer_id,f_name,l_name,date_trunc("DD", order_timestamp)