term.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
term.setCursorPos(1,2)
local args = {...}
shell.setDir("")
if args[1] then
  if string.sub(args[1], 1, 1) == "/" then
    shell.run("edit", args[1])
  else
    shell.run("edit", fs.combine("/Users/"..shell.DLogged, args[1]))
  end
else
  print(" Welcome to Edit!")
  print(" Please type in the name of your file:")
  local f = read()
  if string.sub(f, 1, 1) == "/" then
    shell.run("edit", f)
  else
    shell.run("edit", fs.combine("/Users/"..shell.DLogged, f))
  end
end
