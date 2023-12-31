import os
from time import time as tick
import subprocess
starttick = tick()
gayascii = """
--[[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][--
9██████╗9██╗999██╗███████╗████████╗███████╗99999999999999999999999999999
██╔════╝9██║999██║██╔════╝╚══██╔══╝██╔════╝99999999999999999999999999999
██║99███╗██║999██║███████╗999██║999███████╗99999999999999999999999999999
██║999██║██║999██║╚════██║999██║999╚════██║99999999999999999999999999999
╚██████╔╝╚██████╔╝███████║999██║999███████║99999999999999999999999999999
9╚═════╝99╚═════╝9╚══════╝999╚═╝999╚══════╝99999999999999999999999999999
999999999999999999999999999999999999999999999999999999999999999999999999
██╗999██╗███████╗██████╗9██╗999██╗9999███████╗9█████╗9███╗999██╗███████╗
██║999██║██╔════╝██╔══██╗╚██╗9██╔╝9999██╔════╝██╔══██╗████╗99██║██╔════╝
██║999██║█████╗99██████╔╝9╚████╔╝99999███████╗███████║██╔██╗9██║█████╗99
╚██╗9██╔╝██╔══╝99██╔══██╗99╚██╔╝999999╚════██║██╔══██║██║╚██╗██║██╔══╝99
9╚████╔╝9███████╗██║99██║999██║9999999███████║██║99██║██║9╚████║███████╗
99╚═══╝99╚══════╝╚═╝99╚═╝999╚═╝9999999╚══════╝╚═╝99╚═╝╚═╝99╚═══╝╚══════╝
999999999999999999999999999999999999999999999999999999999999999999999999
███████╗9██████╗██████╗9██╗██████╗9████████╗███████╗99999999999999999999
██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝99999999999999999999
███████╗██║99999██████╔╝██║██████╔╝999██║999███████╗99999999999999999999
╚════██║██║99999██╔══██╗██║██╔═══╝9999██║999╚════██║99999999999999999999
███████║╚██████╗██║99██║██║██║99999999██║999███████║99999999999999999999
╚══════╝9╚═════╝╚═╝99╚═╝╚═╝╚═╝99999999╚═╝999╚══════╝99999999999999999999
--][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]]--
"""
final = ["github: achoolucgust/gusts-very-sane-scripts",gayascii,"""if not game:GetService("RunService"):IsStudio()then if game:GetService("CoreGui"):FindFirstChild("IsGvSsRunning") then error("")else Instance.new("BoolValue",game:GetService("CoreGui")).Name="IsGvSsRunning" end end""","local ModuleScreenUI,_ ="]

def raw_dump(text): # least useful function in 2023
    final.append("(function()")
    final.append(text)
    final.append("end)();")


with open("Source/GenUI.lua", "r") as f:
    raw_dump(f.read())

fuckery_fuck = []

def load_module(path,module,ar=fuckery_fuck):
    with open(path, "r") as f:
        ar.append(f"local Module{module} = (function()")
        ar.append(f.read())
        ar.append("end)();")

def load_module_if(path,module,game_id,ar=fuckery_fuck):
    with open(path, "r") as f:
        ar.append(f"local Module{module} = (function()")
        ar.append(f"if tostring(game.GameId) == \"{game_id}\" then")
        ar.append(f.read())
        ar.append("else")
        ar.append("return (function()end)")
        ar.append("end")
        ar.append("end)();")

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

for i in os.listdir("Source/Game/"):
    for v in os.listdir("Source/Game/" + i):
        load_module_if("Source/Game/" + i + "/" + v,"CustomScript" + v.split(".")[0],i,more_fuckery_fuck)
        loaded_scripts.append("ModuleCustomScript" + v.split(".")[0])

compiledfuckeryfuck = "\n".join(more_fuckery_fuck) + "\n" + "(GS)\n".join(loaded_scripts) + "(GS)"
ftext = "\n".join(final).replace("--[[ insert fuckery fuck here ]]--",compiledfuckeryfuck)
finaler = []

for line in ftext.split("\n"):
    if "require(" in line:
        finaler.append(line.split("=")[0] + "= Module" + line.split(".")[-1].replace(")",""))
    else:
        finaler.append(line)

with open("Final.lua","w+", encoding="utf8") as f:
    f.write("\n".join(finaler).replace("script.Parent","ModuleScreenUI"))
# I am going to go insane over this fucking minifier. 
with open("Mini.lua","w+") as f:
    f.write(subprocess.run("luamin -f Final.lua", capture_output=True, shell=True, text=True).stdout)

print(f"took like {round((tick()-starttick)*1000)}ms")