<header class="header" role="banner">
	<div class="inner">
		<a href="$BaseHref" class="brand" rel="home">
			<h1>$SiteConfig.Title</h1>
			<p>$SiteConfig.Tagline</p>
		</a>
		<% if SearchForm %>
			<span class="search-dropdown-icon">L</span>
			<div class="search-bar">
				$SearchForm
			</div>		
		<% end_if %>
		<% include Navigation %>
	</div>
</header>