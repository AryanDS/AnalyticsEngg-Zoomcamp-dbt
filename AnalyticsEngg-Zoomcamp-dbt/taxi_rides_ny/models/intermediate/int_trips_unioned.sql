with green_trip_data as
(
    select * from {{ref ('str_green_tripdata')}}
),

 yellow_trip_data as
(
    select * from {{ref ('stg_yellow_tripdata')}}
),

 trips_union as
(
    select * from green_trip_data
    UNION ALL
    select * from yellow_trip_data
)

select * from trips_union