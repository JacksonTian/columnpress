<!DOCTYPE html>
<html lang="en">
  <head>
    <% include head.tpl %>
  </head>

  <body id="home">
    <% include navbar.tpl %>

    <div class="container">
      <% include header.tpl %>

      <div class="row">
        <div class="col-sm-9 column-main">
        <% articles.forEach(function (item) { %>
          <div class="column-post">
            <h1 class="column-post-title">
              <a href="articles/<%=item.html%>">
                <%=item.title%>
              </a>
            </h1>
            <p class="column-post-meta">
              <%=item.date ? item.date.toDateString() : ""%>
            </p>
            <%-item.article%>
          </div>
        <% });%>
          <% include disqus.tpl %>
        </div>
        <div class="col-sm-3 column-sidebar">
          <% include sidebar.tpl %>
        </div>
      </div>
    </div><!-- /.container -->

    <% include footer.tpl %>
  </body>
</html>
