<!DOCTYPE html>
<html>
  <head>
    <title>主页</title>
  </head>
  <body>
    <ul>
    <% articles.forEach(function (article) { %>
      <li>
        <a href="articles/<%=article.title%>.html"><%=article.title%></a>
      </li>
    <% });%>
    </ul>
  </body>
</html>
