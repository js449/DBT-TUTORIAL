{# deduplication query #}
WITH dedup_query AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY id ORDER BY updated_at DESC) AS deduplication_id
    FROM 
    {{ source('source', 'items') }}
)
select 
id,
name,
catagory,
updated_at  
 from 
 dedup_query 
 where 
 deduplication_id = 1