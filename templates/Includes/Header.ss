<header class="header" role="banner">
	<div class="inner">
		<a href="$BaseHref" class="brand" rel="home">
			<h1>Simple.</h1>
		</a>
		<% if SearchForm %>
			<span class="search-dropdown-icon">L</span>
			<div class="search-bar">
				$SearchForm
				<span class="search-bubble-arrow">}</span>
			</div>		
		<% end_if %>
		<% include Navigation %>
	</div>
</header>