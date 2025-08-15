with 

source as (

    select * from {{ source('AIRBNB', 'RAW_LISTINGS') }}

),

renamed as (

    select
        id AS listing_id,
        listing_url,
        name as listing_name,
        room_type,
        minimum_nights,
        host_id,
        price as price_str,
        created_at,
        updated_at

    from source

)

select * from renamed
