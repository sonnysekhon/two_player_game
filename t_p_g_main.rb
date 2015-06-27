require 'byebug'

class Player 
  attr_accessor :player_name, :life

  def initialize(player_name)
    @player_name = player_name
    @life = 3
  end
end

class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20) 
  end

  def verify_answer(player_answer)
    player_answer == (@num1 + @num2)
  end
end


def ask_question(player_ask, question_ask)
  puts "#{player_ask.player_name}: What is #{question_ask.num1} + #{question_ask.num2}?"
  user_answer = gets.chomp.to_i

  if question_ask.verify_answer(user_answer) == false
    player_ask.life -= 1
    puts "#{player_ask.player_name} has #{player_ask.life} lives left!"
  end 
end


player1 = Player.new("Player1")
player2 = Player.new("Player2")

loop do 
    if (player1.life == 0) || (player2.life == 0)
      if player1.life >= player2.life
        puts "#{player1.player_name} wins!"
      else
        puts "#{player2.player_name} wins!"  
      end
      break
    end
  question = Question.new  
  ask_question(player1, question)
  ask_question(player2, question)

end






# Player Class
# You will have a Player class, where you will put all of your Player-specific logic and properties.

# Your program will still have to keep track of whose turn it is, and check players' scores and lives.

# Methods
# Your Player class should have instance methods for the following tasks:

# gain a point
# lose a life
# TIPS!
# You can use attr_accessor for things like Player names.

