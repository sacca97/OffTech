

lines = open ("topology.txt", "r").readlines()
res = []


for str in lines:
    res.append(str.strip().split("<- is \"wired\" to ->"))

print(res)