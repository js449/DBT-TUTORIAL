{# Singular test to check for negative values in the gross_amount and net_amount columns of the bronze_sales model. #}
select * from {{ ('bronze_sales') }} where gross_amount < 0 AND net_amount < 0