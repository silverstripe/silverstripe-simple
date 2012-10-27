<aside>
	<% if $Menu(2) %>
		<nav class="secondary">
			<h3>
				<% loop $Level(1) %>
					$Title
				<% end_loop %>
			</h3>
			<ul>
				<% loop $Menu(1) %>
					<% include SidebarMenu %>
				<% end_loop %>
			</ul>
		</nav>
	<% end_if %>
</aside>
