with open("./input.txt") as file:
    lines = file.readlines()


sum = 0
list_of_sums = []
output = 0

for i in range(len(lines)):
    lines[i] = lines[i].rstrip()
    try:
        sum += int(lines[i])
    except:
        list_of_sums.append(sum)
        sum = 0

        
list_of_sums.append(sum)


for i in range(3):

    local_max = max(list_of_sums)
    print(local_max)
    list_of_sums.remove(local_max)
    output += local_max
    


print(f"{output}")