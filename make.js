const
  fs = require('fs'),
  md = require('markdown-it')({ html: true, linkify: true, typographer: true }),
  src = fs.readFileSync('index.md', 'utf8'),
  tmpl = fs.readFileSync('template.html', 'utf8'),
  body = md.render(src),
  html = tmpl.replace('__BODY__', body)

fs.writeFileSync('index.html', html)


