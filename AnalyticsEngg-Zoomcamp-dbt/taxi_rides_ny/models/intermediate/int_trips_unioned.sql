with green_trip_data as
(
    select * , 'Green' as service_type from {{ref ('str_green_tripdata')}}
),

 yellow_trip_data as
(
    select *, 'Yellow' as service_type from {{ref ('stg_yellow_tripdata')}}
),

 trips_union as
(
    select * from green_trip_data
    UNION ALL
    select * from yellow_trip_data
)

select * from trips_union