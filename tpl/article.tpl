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
        <div class="col-sm-8 blog-main">
          <div class="article">
            <%-article%>
          </div>
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
