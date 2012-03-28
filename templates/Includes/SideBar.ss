<aside>
	<% if Menu(2) %>
		<nav class="secondary">
			<h3>
				<% control Level(1) %>
				$Title
				<% end_control %>
			</h3>
			<ul>
				<% control Menu(2) %>
				<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.XML page"><span class="arrow">&rarr;</span><span class="text">$MenuTitle.XML</span></a></li>
				<% end_control %>
			</ul>
		</nav>
	<% end_if %>  	
</aside>
