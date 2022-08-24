class Game
  
  attr_accessor :isActive

  @@players = []
  @@currentPlayerIndex = 0
  @@numbers=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

def initialize(player1,player2)
  @@players << player1
  @@players << player2
  @isActive = true

end

def nextPlayer
  if (@@currentPlayerIndex == 1) 
    @@currentPlayerIndex = 0;
  else 
    @@currentPlayerIndex = 1;
  end
end

def playRound

  num1=@@numbers.sample
  num2=@@numbers.sample
  sum=num1+num2
  puts "#{@@players[@@currentPlayerIndex]}: What does #{num1} plus #{num2} equal?"
  ## Ask Math Question
  answer=gets.chomp


  if(answer.to_i == sum.to_i)
    puts "#{@@players[@@currentPlayerIndex]}: Yes! You are correct."
    puts "P1: #{@@players[0].lives}/3 P2: #{@@players[1].lives}/3"
    puts ''
     puts '-----------NEW TURN-----------'
     puts ''
     if(@@players[@@currentPlayerIndex].lives!=0)
   self.nextPlayer
     end
  end
  if(answer.to_i != sum.to_i)
    puts "#{@@players[@@currentPlayerIndex]}: Seriously? No!"
    @@players[@@currentPlayerIndex].lose_one_life
    puts "P1: #{@@players[0].lives}/3 P2: #{@@players[1].lives}/3"
    puts ''
    puts '-----------NEW TURN-----------'
    puts ''
    if(@@players[@@currentPlayerIndex].lives!=0)
   self.nextPlayer
     end
  end
  if(@@players[@@currentPlayerIndex].lives==0)
    @isActive=false
    self.nextPlayer
    puts "#{@@players[@@currentPlayerIndex]} wins with a score of #{@@players[@@currentPlayerIndex].lives}/3"
    puts ''
    puts '-----------GAME OVER-----------'
    puts ''
    
  end
end

end
