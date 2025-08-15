with 

source as (

    select * from {{ source('AIRBNB', 'RAW_REVIEWS') }}

),

renamed as (

    select
        listing_id,
        date as review_date,
        reviewer_name,
        comments as review_text,
        sentiment as review_sentiment

    from source

)

select * from renamed
