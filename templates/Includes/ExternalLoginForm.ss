<% if IncludeFormTag %>
<form $FormAttributes class="form login-form">
<% end_if %>
	<% if Message %>
	<p id="{$FormName}_error" class="message $MessageType">$Message</p>
	<% else %>
	<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
	<% end_if %>
	
	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %>
		<ul>		 
		<% control Fields %>
			<li class="item $type">
				<% if type != checkbox %><% if IsHidden != true %><label for="$id">$Title</label><% end_if %><% end_if %>
				$Field
				<% if type == checkbox %><label for="$id">$Title</label><% end_if %>
				<% if Message %><span class="message $MessageType">$Message</span><% end_if %>
			</li>
		<% end_control %>
		</ul>
		<% if Actions %>
		<ul class="controls">
			<% control Actions %>
				<li>$Field</li>
			<% end_control %>
		</ul>
		<% end_if %>
	</fieldset>
<% if IncludeFormTag %>
</form>
<% end_if %>
