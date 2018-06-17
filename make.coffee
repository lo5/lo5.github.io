hljs = require 'highlight.js'
md = (require 'markdown-it')
  typographer: on
  highlight: (str, lang) ->
    if lang and hljs.getLanguage lang
      try
        return (hljs.highlight lang, str).value
      catch __
    '' # use external default escaping

md = md.use require 'markdown-it-footnote'
fs = require 'fs'

do ->
  txt = fs.readFileSync 'index.md', 'utf8'
  tmpl = fs.readFileSync 'template.txt', 'utf8'
  content = md.render txt
  html = tmpl.replace '#here#', content
  fs.writeFileSync 'index.html', html, 'utf8'
  console.log '--OK--'
