{%- set apples = "gala", "red delicious", "honeycrisp", "fuji" -%}
{%- for apple in apples -%}
    {% if apple != "fuji" %}
        {{ apple }}
    {% else %}
        {{ apple }} is my favorite apple!
    {%- endif -%}
{% endfor %}