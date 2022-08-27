local ok, colorizer = pcall(require, "colorizer")
if ok then
  print "colorizer is not installed"
  return
end

colorizer.setup()
