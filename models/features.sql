with final as (
    select      price as label
                ,neighbourhood_group, room_type, minimum_nights, number_of_reviews, reviews_per_month, calculated_host_listings_count, availability_365
                ,case(abs(mod(farm_fingerprint(id), 10)))
                    when 9 then 'test'
                    when 8 then 'validation'
                    else 'training' end as split_col
    from        `ai-analytics-solutions.publicdata.airbnb_nyc_2019`
)
select * from final