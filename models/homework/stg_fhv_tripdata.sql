{{ config(materialized="view") }}

select
    dispatching_base_num,

    cast(pulocationid as integer) as pickup_locationid,
    cast(dolocationid as integer) as dropoff_locationid,

    cast(pickup_datetime as timestamp) as pickup_datetime,
    cast(dropoff_datetime as timestamp) as dropoff_datetime,

    sr_flag

from {{ source("staging","fhv_tripdata") }}
--where rn = 1

