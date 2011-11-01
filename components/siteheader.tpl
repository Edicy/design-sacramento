<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	{% stylesheet_link "style.css?sacramento" %}
<!--[if IE]>{% stylesheet_link "style_ie.css?sacramento" %}<![endif]-->
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
{% if site.search.enabled %}
	{% stylesheet_link "assets/site_search/2.0/site_search.css?1" static_host="true" %}
        {% endif %}
<!--[if lte IE 6]>
<style type="text/css">
* html #search {
background: none;
filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='{{images_path}}/search-bg.png?1', sizingMethod='crop');
}
* html #wrap {
	background: none;
filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='{{images_path}}/coffeestain.png?1', sizingMethod='crop');
}
</style>
<![endif]-->
<meta name="viewport" content="initial-scale=1" />