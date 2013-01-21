<aside class="sidebar unit size1of4">
	<% if $Menu(2) %>
		<nav class="secondary">
			<h3>
				<% loop $Level(1) %>
					$Title
				<% end_loop %>
			</h3>
			<ul>
				<% include SidebarMenu %>
			</ul>
		</nav>
	<% end_if %>
</aside>
