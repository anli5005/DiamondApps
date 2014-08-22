term.setCursorPos(1,1)
term.setBackgroundColor(colors.gray)
term.setTextColor(colors.lightGray)
print("")
print(" Set a password (leave blank to cancel):")
write(" ")
local pass = read()
if not(pass == "") then
  local h = fs.open("/Users/"..multishell.DLogged.."/Diamond/Security", "w")
  h.write(pass)
  h.close()
end
