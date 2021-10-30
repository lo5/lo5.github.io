[fs, path, mdit] = ['fs', 'path', 'markdown-it'].map (x) -> require x
html = mdit html: true, linkify: true, typographer: true
read = (x) -> fs.readFileSync x, 'utf8'
template = read 'template.html'
files = fs.readdirSync('.')
  .filter (f) -> '.md' is path.extname f
  .forEach (f) ->
    name = path.basename f, path.extname f
    markup = html.render read f
    fs.writeFileSync name+'.html', template.replace /__/, markup

