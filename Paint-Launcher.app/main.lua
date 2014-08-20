term.setBackgroundColor(colors.blue)
term.setTextColor(colors.lightBlue)
term.setCursorPos(1,2)
term.clear()
local args = {...}
shell.setDir("")
if args[1] then
  if string.sub(args[1], 1, 1) == "/" then
    shell.run("paint", args[1])
  else
    shell.run("paint", fs.combine("/Users/"..multishell.DLogged, args[1]))
  end
else
  print(" Welcome to Paint!")
  print(" Please type in the name of your file:")
  write(" ")
  local f = read()
  if string.sub(f, 1, 1) == "/" then
    shell.run("paint", f)
  else
    shell.run("paint", fs.combine("/Users/"..multishell.DLogged, f))
  end
end
