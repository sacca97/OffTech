import subprocess

subprocess.call(["sh", "setup.sh"])

lines = open ("topology.txt", "r").readlines()



res = [str.strip().split("<- is \"wired\" to ->") for str in lines]
iFaceList = {}

for s in res:
    for x in s:
        t = x.strip().split(" ")
        if len(t) == 0:
            continue
        if t[0] in iFaceList:
            iFaceList[t[0]].append(t[1])
        else:
            iFaceList[t[0]] = [t[1]]


for iFace in iFaceList:
    firstCommand = "ssh {}.Sacchetti-IntNetw.OffTech".format(iFace) 
    if len(iFaceList[iFace]) == 1:
        secondCommand = "sudo sh OffTech/{}.sh {}".format(iFace, iFaceList.get(iFace)[0])
    else:
        secondCommand = "sudo sh OffTech/{}.sh {} {}".format(iFace, iFaceList.get(iFace)[0], iFaceList.get(iFace)[1])
    print(secondCommand)
    #subprocess.call([firstCommand,secondCommand])