[fs, path, format_date] = ['fs', 'path', 'dateformat'].map (x) -> require x
read = (x) -> fs.readFileSync x, 'utf8'
write = (f, x) -> fs.writeFileSync f, x
die = (x) -> console.error "error: #{x}"; process.exit 1

today = format_date(new Date(), 'yyyy-mm-dd') + '.md'
die "#{today} exists" if fs.existsSync today

h1 = null
todo = []
done = []
notes = read('todo.md')
  .split /\n/
  .map (x) ->
    if /^x\s+/.test x
      done.push x; null
    else if /^\.\s+/.test x
      todo.push x; null
    else if /^#\sTODO/.test x
      null
    else if /^#\s+/.test x
      h1 = x; null
    else
      x
  .filter (x) -> x isnt null
  .join '\n'
  .trim()

die "no heading1" unless h1

write today, [h1, '\n## Done\n', done..., '\n## Notes\n', notes].join '\n'
write 'todo.md', ['# TODO', todo...].join '\n'

