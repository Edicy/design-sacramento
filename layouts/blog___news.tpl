<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
{% include "SiteHeader" %}
    <title>{% if article %}{{ article.title }} | {{page.site_title}}{% else %}{{page.site_title}} | {{ page.title }}{% endif %}</title>
   {{ blog.rss_link }}
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
    <div id="content">
      <div class="inner">
      {% if tags %}
        <div class="tagged-list-header">
            <div class="header-tag-icon"></div>
            {% if tags == empty %}
                {{ "no_posts_tagged" | lc }}
            {% else %}
                {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
            {% endif %}
        </div>
      {% endif %}
      
     {% addbutton class="add-article" %}
      
     {% for article in articles %}
     <div class="post">
      <h2><a href="{{article.url}}">{{article.title}}</a></h2>
      {{ article.created_at | format_date:"%d %B" }}, <a href="{{article.url}}#comments">{{"comments_for_count" | lc}}: {{article.comments_count}}</a>
      <p>
       {{article.excerpt}}
       <a href="{{article.url}}">{{"read_more" |lc}} &raquo;</a>
      </p>
     </div>
     {% endfor %}
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
