print("Installing RabbitOS v1.0")
term.setTextColor(colors.red)
print("WARNING: Installing RabbitOS will delete ALL you files, do you want to procede? Y/N")
while(true) do
  local event, key, isHeld = os.pullEvent("key")
  if isHeld then
    if key == keys.y then
      term.setTextColor(colors.white)
      print("Removing Files")
      local files = fs.list("/")
      for k,v in ipairs(files) do
        if v ~= "rom" and v ~= shell.getRunningProgram() then
          print("-"..v)
          fs.delete(v)
          sleep(.1)
        end
      end
      print("Deleted Files")
      sleep(.2)
      print("Installing Files")
      fs.makeDir("/apps/")
      fs.makeDir("/system/")
      fs.makeDir("/user/")
      break
    else
      print("Terminating Installation")
      sleep(.4)
      print("Installation Terminated")
      break
    end
  end
end
