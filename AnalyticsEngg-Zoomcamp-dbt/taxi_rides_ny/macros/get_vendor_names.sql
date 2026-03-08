{% macro get_vendor_names(vendor_id) -%}

case 
    when {{vendor_id}} = 1 then 'Creative Tech.co'
    when {{vendor_id}} = 2 then 'Taxicompany.co'
    when {{vendor_id}} = 3 then 'Unknown_Vendor'
END

{%- endmacro %}
