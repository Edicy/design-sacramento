{% if site.search.enabled %}
<div id="search" class="clearfix edys-search">
    <form action="#">
     <div>
      <input type="text" id="onpage_search" class="textbox edys-search-input" placeholder="{{ "search"|lc }}" />
     </div>
     <div>
       <input type="submit" value="{{'search'|lc}}" class="submit" />
     </div>
    </form>
   </div>
{% endif %}
