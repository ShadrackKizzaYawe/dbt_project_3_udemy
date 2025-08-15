{% macro learn_variables(args) %}

   {% set your_name = "Shadrack" %}
     {{ log('Hello ' ~ your_name, info=True) }}


    {{ log('Hello ' ~ var("user_name") ~ '!', info=True) }}
{% endmacro %}