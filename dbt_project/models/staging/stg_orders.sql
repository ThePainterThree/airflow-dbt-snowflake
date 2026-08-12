with source as (

    select *
    from {{ ref('raw_orders') }}

),

renamed as (

    select
        order_id,
        customer_id,
        product_id,
        order_date::date as order_date,
        quantity,
        unit_price::decimal(10,2) as unit_price,
        payment_status
    from source

)

select * from renamed