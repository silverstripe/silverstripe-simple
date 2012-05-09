<div id="Content" class="searchResults">
    <h1>$Title</h1>
     
    <% if Query %>
        <p class="searchQuery"><strong>You searched for &quot;{$Query}&quot;</strong></p>
    <% end_if %>
         
    <% if Results %>
    <ul id="SearchResults">
        <% control Results %>
        <li>
            <a class="searchResultHeader" href="$Link">
                <% if MenuTitle %>
                $MenuTitle
                <% else %>
                $Title
                <% end_if %>
            </a>
            <p>$Content.LimitWordCountXML</p>
            <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
        </li>
        <% end_control %>
    </ul>
    <% else %>
    <p>Sorry, your search query did not return any results.</p>
    <% end_if %>
             
    <% if Results.MoreThanOnePage %>
    <div id="PageNumbers">
        <div class="pagination">
            <% if Results.NotFirstPage %>
            <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a>
            <% end_if %>
            <span>
                <% control Results.Pages %>
                    <% if CurrentBool %>
                    $PageNum
                    <% else %>
                    <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                    <% end_if %>
                <% end_control %>
            </span>
            <% if Results.NotLastPage %>
            <a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a>
            <% end_if %>
        </div>    
        <p>Page $Results.CurrentPage of $Results.TotalPages</p>
    </div>
    <% end_if %>
</div>