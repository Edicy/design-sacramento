<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
{% include "SiteHeader" %}
     <title>{{site.name}} &gt; {{page.title}}</title>
	</head>
	<body>
  <div id="wrap" class="clearfix">
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
      <div class="inner">
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
