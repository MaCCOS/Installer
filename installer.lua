shell.run("rm *")

file = fs.open("grd","w")
file.write(http.get("https://raw.githubusercontent.com/MaCCOS/Installer/master/grd").readAll())
file.close()

shell.run("grd MaCCOS MaCCOS / . .")
shell.run("mv MaCCOS/* /")

fs.delete("README.md")
fs.delete("grd")
fs.delete("MaCCOS")

fs.makeDir("usr/apps")
os.reboot()
