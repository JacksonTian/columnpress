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
        <div class="col-sm-8 column-main">
        <% articles.forEach(function (item) { %>
          <div class="column-post">
            <h2 class="column-post-title">
              <a href="articles/<%=item.html%>">
                <%=item.title%>
              </a>
            </h2>
            <p class="column-post-meta">
              <%=item.date.toDateString()%>
            </p>
            <%-item.article%>
          </div>
        <% });%>
          <% include disqus.tpl %>
        </div>
        <div class="col-sm-3 col-sm-offset-1 column-sidebar">
          <% include sidebar.tpl %>
        </div>
      </div>
    </div><!-- /.container -->

    <% include footer.tpl %>
  </body>
</html>
