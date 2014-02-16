// filter markdown files
var files = fs.readdirSync(docdir);
var markdowns = files.filter(function (filename) {
  var ext = path.extname(filename);
  return ext === '.md';
});

markdowns.forEach(function (filename) {
  var markdown = path.join(docdir, filename);
  var html = marked(fs.readFileSync(markdown, 'utf-8'));

  var basename = path.basename(filename, path.extname(filename));
  var output = ejs.render(articleTpl, helper.extend({
    title: filename,
    html: html,
    filename: path.join(__dirname, '../tpl/article.tpl')
  }, pkg));

  var article = path.join(htmldir, han.letter(basename, '-') + '.html');
  fs.writeFileSync(article, output);
});

var articles = markdowns.map(function (filename) {
  var basename = path.basename(filename, path.extname(filename));
  return {
    title: basename,
    link: han.letter(basename, '-')
  };
});
