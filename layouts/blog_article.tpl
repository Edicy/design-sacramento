<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="page.language_code">
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
          <div class="post">
      <h2>{% editable article.title %}</h2>
      {{article.created_at | format_date:"%d %B"}}, <a href="#comments">{{"comments_for_count" |lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></a>
      <div class="excerpt" data-search-indexing-allowed="true">
       {% editable article.excerpt %}
      </div>
      <div data-search-indexing-allowed="true">{% editable article.body %}</div>
      
      {% if editmode %}
        <div class="cfx article-tags">
            <div class="article-tag-icon"></div>
            {% editable article.tags %}
        </div>
     {% else %}
        {% unless article.tags == empty %}
            <div class="cfx article-tags">
                <div class="article-tag-icon"></div>
                {% for tag in article.tags %}
                    <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                {% endfor %}
            </div>
        {% endunless %}
      {% endif %}
      
     </div>
     <a name="comments"></a>
     <table id="comments-table">
      <tr>
       <th colspan="2"><h3>{{"comments_for_count" |lc}}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span>
</h3></th>
      </tr>
      {% for comment in article.comments %}
      <tr class="edy-site-blog-comment">
       <td class="commentator-name">
        <strong>{{comment.author}}</strong> {% removebutton %}<br />
        {{comment.created_at | format_date:"%d. %B" }}
       </td>
       <td>
        {{comment.body_html}}
       </td>
      </tr>
      {% endfor %}
     </table>
     <div id="commentform">
      <div class="yellowbox"><h3>{{"add_a_comment"|lc}}</h3></div>
      {% commentform %}
      <div id="commentform-inner">
      {% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
       <table style="100%;">
        <tr>
         <td>
          <label for="comment-name">{{"name"|lc}}</label>
         </td>
         <td>
          <input type="text" class="textbox" value="{{comment.author}}" name="comment[author]" id="comment-name" />
         </td>
        </tr>
        <tr>
         <td>
          <label for="comment-email">{{"email"|lc}}</label>
         </td>
         <td>
          <input type="text" class="textbox" value="{{comment.author_email}}" id="comment-email" name="comment[author_email]" />
         </td>
        </tr>
        <tr>
         <td>
          <label for="comment-body">{{"comment"|lc}}</label>
         </td>
         <td>
          <textarea cols="5" rows="5" class="textarea" name="comment[body]" id="comment-body">{{comment.body}}</textarea>
         </td>
        </tr>
        <tr>
         <td></td>
         <td>
          <input type="submit" value="{{"submit"|lc}}" class="submit" />
         </td>
        </tr>
       </table>
      </div>
      {% endcommentform %}
     </div>
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
