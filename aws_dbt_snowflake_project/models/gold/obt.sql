{% set configs = [
    {
        "table": "AIRBNB.SILVER.BOOKING",
        "columns": "bookings.*",
        "alias": "bookings"
    },
    {
        "table": "AIRBNB.SILVER.LISTING",
        "columns": "listings.HOST_ID, listings.PROPERTY_TYPE, listings.ROOM_TYPE, listings.CITY, listings.COUNTRY, listings.ACCOMMODATES, listings.BEDROOMS, listings.BATHROOMS, listings.PRICE_PER_NIGHT, listings.PRICE_PER_NIGHT_TAG, listings.CREATED_AT AS LISTING_CREATED_AT",
        "alias": "listings",
        "join_condition": "bookings.listing_id = listings.listing_id"
    },
    {
        "table": "AIRBNB.SILVER.HOST",
        "columns": "hosts.HOST_NAME, hosts.HOST_SINCE, hosts.IS_SUPERHOST, hosts.RESPONSE_RATE, hosts.RESPONSE_RATE_QUALITY, hosts.CREATED_AT AS HOST_CREATED_AT",
        "alias": "hosts",
        "join_condition": "listings.host_id = hosts.host_id"
    }
] %}

SELECT 
{% for config in configs %}
    {{ config['columns'] }}{% if not loop.last %},
    {% endif %}
{% endfor %}

FROM 
{% for config in configs %}
    {% if loop.first %}
        {{ config['table'] }} AS {{ config['alias'] }}
    {% else %}
        LEFT JOIN {{ config['table'] }} AS {{ config['alias'] }}
        ON {{ config['join_condition'] }}
    {% endif %}
{% endfor %}