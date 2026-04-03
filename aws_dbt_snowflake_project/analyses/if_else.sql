{% set flag = 2 %}


select * from {{ ref('bookings')}}
{% if flag == 1 %}
    WHERE NIGHTS_BOOKED > 1
{% else %}
    WHERE NIGHTS_BOOKED = 1
{% endif %}
 