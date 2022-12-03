

def findPriority(item)
    priorityList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l","m", "n", "o", "p", "q", "r", "s", "t","u", "v","w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O","P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    return priorityList.index(item) +1
end


# def splitCompartments(rucksack)
#     i = 0
#     compartment1 = ""
#     compartment2 = ""
#     compartmentLength = rucksack.length/2

#     while i >= rucksack.length
#         if i < compartmentLength
#             compartment1 += item
#         else
#             compartment2 += item
#         end
#     end


def splitCompartments(rucksack)
    i = 0
    compartment1 = ""
    compartment2 = ""

    compartment1,compartment2 = rucksack.partition(/.{#{rucksack.size/2}}/)[1,2]
    
    return compartment1, compartment2
end


result = 0
line = 1
File.readlines("input.txt").each do |rucksack|
    rucksack = rucksack.chomp()
    compartment1, compartment2 = splitCompartments(rucksack)


    compArray1 = compartment1.split("")
    compArray2 = compartment2.split("")
    p "rucksack   " + rucksack
    p   compArray1
    p   compArray2
    p line
    line += 1


    compArray1.each do |item|
        if compArray2.include? item
            p "common letter " + item
            p "added #{findPriority(item)} to result"
            result += findPriority(item)
            break
        end
    end
    
end
print result

