<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="{{ javascripts_path }}/modernizr.js"></script>
	{% stylesheet_link "style.css?sacramento1" %}
<!--[if IE]>{% stylesheet_link "style_ie.css?sacramento" %}<![endif]-->
    {% if site.search.enabled %}{% stylesheet_link "assets/site_search/3.0/style.css?1" static_host="true" %}{% endif %}
	{% if editmode %}<style>.untranslated{opacity:.5;filter:alpha(Opacity=50);zoom:1}</style>{% endif %}
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
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
