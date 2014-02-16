<div class="sidebar-module sidebar-module-inset">
  <h4>About</h4>
  <p><%=about%></p>
</div>

<div class="sidebar-module">
  <h4>友情链接</h4>
  <ol class="list-unstyled">
  <% links.forEach(function (item) { %>
    <li>
      <a href="<%=item.link%>" target="_blank">
      <% if (item.logo) { %>
        <img src="<%=item.logo%>" alt="<%=item.title%>" />
      <% } else { %>
        <%=item.title%>
      <% } %>
      </a>
    </li>
  <% }); %>
  </ol>
</div>
