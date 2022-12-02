
def calculateWinner(computerInput, playerInput)
    if computerInput == playerInput
        return "draw"
    end

    
    if computerInput == "Rock"
        if playerInput == "Paper"
            return "player"
        else  
            return "computer"
        end
    end

    if computerInput == "Paper"
        if playerInput == "Rock"
            return "computer"
        else  
            return "player"
        end
    end

    if computerInput == "Scissors"
        if playerInput == "Paper"
            return "computer"
        else
            return "player"
        end
    end

end

                
        

def translateInput(input)
    if input == "X" or input == "A"
        return "Rock"

    elsif input == "Y"  or input == "B"
        return "Paper"
    elsif input == "Z" or input == "C"
        return "Scissors"
    end
end

def getLoosingChoice(input)
    if input == "Rock"
        return "Scossors"
    elsif input == "Paper"
        return "Rock"
    else
        return "Paper"
    end
end
        
def getWinningChoice(input)
    if input == "Rock"
        return "Paper"
    elsif input == "Paper"
        return "Scissors"
    else
        return "Rock" 
    end
end 
    
playerScore = 0
File.readlines("input.txt").each do |line|
    line.chomp()
    temp = line.split(" ")
    p temp

    playerChoice = translateInput(temp[1])
    computerChoice = translateInput(temp[0])

    if temp[1] == "X"
        playerChoice = getLoosingChoice(computerChoice)
        p "need to loose"
    elsif temp[1] == "Y"
        p "need to draw"
        playerChoice = computerChoice
    else
        p "need to win"
        playerChoice = getWinningChoice(computerChoice)
    end


    

    matchResult = calculateWinner(computerChoice, playerChoice)
    p matchResult


    if matchResult == "player"
        playerScore += 6
        p "added 6"
    elsif matchResult == "draw"
        playerScore += 3
        p "added 3"
    end

    if playerChoice == "Rock"
        playerScore += 1
    elsif playerChoice == "Paper"
        playerScore += 2
    elsif playerChoice == "Scissors"
        playerScore += 3
    end
   

end

p playerScore

