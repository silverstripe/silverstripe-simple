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
		<% control Fields %>
			<div class="field $type">
				<% if type != checkbox %><% if IsHidden != true %><label for="$id">$Title</label><% end_if %><% end_if %>
				<div class="middleColumn">$Field</div>	
				<% if type == checkbox %><label for="$id">$Title</label><% end_if %>
				<% if Message %><span class="message $MessageType">$Message</span><% end_if %>
			</div>
		<% end_control %>

		<% if Actions %>
		<div class="Actions">
			<div class="middleColumn">
			<% control Actions %>
				$Field
			<% end_control %>
			</div>
		</ul>
		<% end_if %>
	</fieldset>
<% if IncludeFormTag %>
</form>
<% end_if %>
