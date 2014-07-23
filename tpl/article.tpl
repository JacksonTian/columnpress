<!DOCTYPE html>
<html lang="en">
  <head>
    <% include head.tpl %>
  </head>

  <body id="article">
    <% include navbar.tpl %>

    <div class="container">
      <% include header.tpl %>

      <div class="row">
        <div class="col-sm-9 blog-main">
          <div class="article">
            <h1 class="column-post-title">
              <%=title%>
            </h1>
            <p class="column-post-meta">
              <%=locals.date ? locals.date.toDateString() : ""%>
            </p>
            <%-article%>
          </div>
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
