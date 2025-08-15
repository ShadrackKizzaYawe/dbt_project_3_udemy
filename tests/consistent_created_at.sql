select * from {{ ref('fct_reviews') }} fr
inner join {{ ref('dim_listings_cleansed') }} r on fr.listing_id = r.listing_id
where review_date < created_at 
