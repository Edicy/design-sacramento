<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="{{ page.language_code }}">
	<head>
{% include "SiteHeader" %}
     <title>{% if article %}{{ article.title }} | {{page.site_title}}{% else %}{{page.site_title}} | {{ page.title }}{% endif %}</title>
	</head>
	<body>
  <div id="wrap" class="clearfix content-hyphenate">
   <div id="paperclip-top"></div>
   {% include "Search" %}
   <!--//search-->
   <div id="page"{% unless site.search.enabled %} style="margin-top: 60px;"{% endunless %}>
    <div id="header">
    {% include "Langmenu" %}
     <h1 class="clearfix">{% editable site.header %}</h1>
     <div id="menus">
      {% include "Mainmenu" %}
      {% include "Submenu" %}
      {% include "Thirdmenu" %}
     </div>
    </div>
    <!-- //header -->
    <div id="content" class="clearfix">
      <div class="inner" data-search-indexing-allowed="true">
        {% content %}
      </div>
    </div>
    <!--//CONTENT-->
    <div id="footer" class="clearfix">
     {% xcontent name="footer" %}
    </div>
   </div>
   <!--//PAGE-->
    <div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
  </div>
  {% include "JS" %}
	</body>
</html>
