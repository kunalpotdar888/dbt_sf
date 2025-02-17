with cust as(
    select * from {{ref("stg_customers")}}
),
ord as(
    select * from {{ref("stg_orders")}}
),

final as (
    select b.O_ORDERKEY,a.C_CUSTKEY,b.O_TOTALPRICE,b.O_ORDERDATE,a.C_NAME,a.C_ACCTBAL
    from cust  a left join ord b on a.C_CUSTKEY=b.O_CUSTKEY

)

select * from final
