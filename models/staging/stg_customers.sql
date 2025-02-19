
with customers as (
select * from {{ source('jaffle_shop', 'customer') }}
)

select * from customers