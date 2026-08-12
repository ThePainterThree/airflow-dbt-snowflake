with source as (

    select *
    from {{ ref('raw_customers') }}

),

renamed as (

    select
        customer_id,
        customer_name,
        email,
        city,
        signup_date::date as signup_date
    from source

)

select * from renamed