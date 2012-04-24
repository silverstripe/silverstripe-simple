<nav class="primary">
	<span class="nav-open-button">²</span>
	<ul id="nav">
		<% loop Menu(1) %>	  
			<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a><span class="nav-arrow"> > </span></li>
		<% end_loop %>
	</ul>
</nav>