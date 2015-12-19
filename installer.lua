shell.run("rm *")

file = fs.open("grd","w")
file.write(http.get("https://raw.githubusercontent.com/MaCCOS/Installer/master/grd").readAll())
file.close()

shell.run("grd MaCCOS MaCCOS / . .")
shell.run("mv MaCCOS/* /")
shell.run("rm README.md grd MaCCOS")
os.reboot()
