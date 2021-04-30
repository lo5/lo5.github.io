[fs, path, format_date, mdit, handlebars] = [
  'fs', 'path', 'dateformat', 'markdown-it', 'handlebars'
].map (x) -> require x
html = mdit html: true, linkify: true, typographer: true
read = (x) -> fs.readFileSync x, 'utf8'
handlebars.registerHelper 'set', (k, v, opts) -> opts.data.root[k] = v; return
merge = handlebars.compile read 'template.html'
cbox = (x) -> "<i class='#{x}'></i>"
lex_lt = (x, y) -> if x > y then -1 else if x < y then 1 else 0
parse_date = (x) ->
  [y, m, d] = x.split('-').map (x) -> parseInt x
  new Date y, m-1, d
caps = (x) ->
  x.replace /([\.\?\!]\s+)(\w)/g, (_, s, c) -> s + c.toUpperCase()
  .replace /^(\w)/, (_, c) -> c.toUpperCase()

files = fs.readdirSync('.')
  .filter (f) -> '.md' is path.extname f
  .map (f) ->
    name = path.basename f, path.extname f
    source = name+'.md'
    target = name+'.html'
    is_post = /^\d{4}-\d{2}-\d{2}$/.test name
    mtime = if is_post then parse_date name else fs.statSync(source).mtime
    date = format_date mtime, 'mmm dd, yyyy (ddd)'
    title = 'Untitled'
    markdown = read(source)
      .split /\n/
      .map (x) ->
        if m = x.match /^#\s+(.+?)\s*$/
          title = caps m[1]; ''
        else if m = x.match /^([\.x])\s+(.+)/
          [_, b, t] = m
          "- #{cbox if b is '.' then 'todo' else 'done'} #{caps t}"
        else if /^\s{4}/.test x
          x
        else
          caps x
      .join '\n'

    { name, source, target, title, is_post, date, markdown }

index = files
  .filter (f) -> f.is_post
  .sort (x, y) -> lex_lt x.name, y.name
  .map (f) -> "- [#{f.date} — #{f.title}](#{f.target})"
  .join '\n'

meta = { index }

files.forEach (f) ->
  f.markup = html.render f.markdown.replace /[{]{3}\s*(\w+)\s+(.+?)\s*[}]{3}/g, (_, f, x) ->
    switch f
      when 'get' then meta[x]
      when 'read' then read(x).split(/\n/).map((x) -> '    '+x).join('\n')
      else undefined
  fs.writeFileSync f.target, merge f

