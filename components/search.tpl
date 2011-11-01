{% if site.search.enabled %}
<div id="search" class="clearfix">
    <form action="#">
     <div>
      <input type="text" id="onpage_search" class="textbox" />
     </div>
     <div>
       <input type="submit" value="{{'search'|lc}}" class="submit" />
     </div>
    </form>
   </div>
{% endif %}
