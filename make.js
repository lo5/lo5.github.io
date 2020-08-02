const
  fs = require('fs'),
  Md = require('markdown-it'),
  md = new Md(),
  src = fs.readFileSync('index.md', 'utf8'),
  tmpl = fs.readFileSync('template.html', 'utf8'),
  body = md.render(src),
  html = tmpl.replace('__BODY__', body)

fs.writeFileSync('index.html', html)


