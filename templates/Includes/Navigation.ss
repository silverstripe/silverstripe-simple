<nav class="primary">
	<span class="nav-open-button">²<span class="menu-text">Menu</span></span>
	<ul id="nav">
		<span class="menu-bubble-arrow">{</span>
		<% loop Menu(1) %>	  
			<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
</nav>