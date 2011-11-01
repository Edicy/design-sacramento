{% for item in site.menuitems %}
{% if item.selected_with_children? %}
{% for level2 in item.children %}
{% if level2.selected? %}
{% if editmode %}
<ul id="thirdmenu" class="clearfix">
  {% for level3 in level2.visible_children %}
  <li{% if level3.selected? %} class="active"{% endif %}{% unless level3.translated? %} class="untranslated"{% endunless %}><a href="{{level3.url}}"{% unless level3.translated? %} class="fci-editor-menuadd"{% endunless %}>{{level3.title}}</a></li>
  {% endfor %}
    <li>{% menubtn level2.hidden_children %}</li>    
  <li>{% menuadd parent="level2" %}</li>
      </ul>	
{% else %}
    {% if level2.children? %}
    <ul id="thirdmenu" class="clearfix">
      {% for level3 in level2.children %}
      <li{% if level3.selected? %} class="active"{% endif %}><a href="{{level3.url}}">{{level3.title}}</a></li>
      {% endfor %}
    </ul>
    {% endif %}
{% endif %}
        {% endif %}
{% endfor %}
{% endif %}
{% endfor %}
