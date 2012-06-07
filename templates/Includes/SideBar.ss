<aside>
	<% if Menu(2) %>
		<nav class="secondary">
			<h3>
				<% loop Level(1) %>
				$Title
				<% end_loop %>
			</h3>
			<ul>
				<% loop Menu(2) %>
				<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.XML page"><span class="arrow">&rarr;</span><span class="text">$MenuTitle.XML</span></a></li>
				<% end_loop %>
			</ul>
		</nav>
	<% end_if %>  	
</aside>
