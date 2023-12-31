# man i hate roblo
import os
import subprocess
final = ["local ModuleScreenUI,_ ="]

def raw_dump(text): # least useful function in 2023
    final.append("(function()")
    final.append(text)
    final.append("end)();")


with open("Source/GenUI.lua", "r") as f:
    raw_dump(f.read())

fuckery_fuck = []

def dump_module(text,module,ar=fuckery_fuck):
    ar.append(f"local Module{module} = (function()")
    ar.append(text)
    ar.append("end)();")

def load_module(path,module,ar=fuckery_fuck):
    with open(path, "r") as f:
        dump_module(f.read(),module,ar)

load_module("Source/UI.lua","UI")
load_module("Source/Buttons.lua","Buttons")
load_module("Source/GvSsMain.lua","GvSsMain")

with open("Source/main.lua", "r") as f:
    raw_dump("\n".join(fuckery_fuck) + "\n" + f.read())

more_fuckery_fuck = []
loaded_scripts = []

for i in os.listdir("Source/Scripts/"):
    load_module("Source/Scripts/" + i,"CustomScript" + i.split(".")[0],more_fuckery_fuck)
    loaded_scripts.append("ModuleCustomScript" + i.split(".")[0])

compiledfuckeryfuck = "\n".join(more_fuckery_fuck) + "\n" + "(GS)\n".join(loaded_scripts) + "(GS)"
ftext = "\n".join(final).replace("--[[ insert fuckery fuck here ]]--",compiledfuckeryfuck)
finaler = []

for line in ftext.split("\n"):
    if "require(" in line:
        finaler.append(line.split("=")[0] + "= Module" + line.split(".")[-1].replace(")",""))
    else:
        finaler.append(line)

with open("Final.lua","w+") as f:
    f.write("\n".join(finaler).replace("script.Parent","ModuleScreenUI"))
# I am going to go insane over this fucking minifier. 
with open("Mini.lua","w+") as f:
    f.write(subprocess.run("luamin -f Final.lua", capture_output=True, shell=True, text=True).stdout)