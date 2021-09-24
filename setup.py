import subprocess

lines = open ("topology.txt", "r").readlines()

res = [str.strip().split("<- is \"wired\" to ->") for str in lines]
iFaceList = {}

#extract the node names and the used eth interfaces from the file
for s in res:
    for x in s:
        if x == "":
            continue
        t = x.strip().split(" ")
        if t[0] in iFaceList:
            iFaceList[t[0]].append(t[1])
        else:
            iFaceList[t[0]] = [t[1]]

#for each node connects via SSH and runs a local script passing one or more network intrface 
for iFace in iFaceList:
    server = "{}.Sacchetti-IntNetw.OffTech".format(iFace)
    command = "sudo sh OffTech/{}.sh {} ".format(iFace, iFaceList.get(iFace)[0])
    if len(iFaceList[iFace]) != 1:
        command += iFaceList.get(iFace)[1]
    
    subprocess.check_output(["ssh",server, command])

#g= subprocess.check_output(["ssh", "", "ping -c 1 1.1.1.1"])
#print(g)