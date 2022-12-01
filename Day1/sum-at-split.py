with open("./input.txt") as file:
    lines = file.readlines()


sum = 0
list_of_sums = []
for i in range(len(lines)):
    lines[i] = lines[i].rstrip()
    try:
        sum += int(lines[i])
    except:
        list_of_sums.append(sum)
        sum = 0

        
list_of_sums.append(sum)

output = max(list_of_sums)


print(f"{output}")