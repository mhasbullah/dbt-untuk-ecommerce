{% macro status_mapping(column_name, return_type='text') %}
  {% set status_indicator_text = {
                                    "Completed": "Order Completed", 
                                    "Processing": "Order is Being Processed", 
                                    "Shipped": "Order Shipped", 
                                    "Delivered": "Order Delivered"
                                  } %}
  
  {% set status_indicator_numeric = {
                                      "Completed": 1, 
                                      "Processing": 2, 
                                      "Shipped": 3, 
                                      "Delivered": 4
                                    } %}
  
  {% if return_type == 'text' %}
    case
      {% for k, v in status_indicator_text.items() %}
      when {{ column_name }} = '{{ k }}'
      then '{{ v }}'
      {% endfor %}
    end

  {% elif return_type == 'numeric' %}
    case
      {% for k, v in status_indicator_numeric.items() %}
      when {{ column_name }} = '{{ k }}'
      then '{{ v }}'
      {% endfor %}
    end

  {% else %}
   'Unknown Type'

  {% endif %}
{% endmacro %}
