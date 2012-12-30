<aside>
	<% if $Menu(2) %>
		<nav class="secondary">
				<% with $Level(1) %>
			<h3>
					$Title
			</h3>
			<ul>
					<% include SidebarMenu %>
			</ul>
				<% end_with %>
		</nav>
	<% end_if %>
</aside>
